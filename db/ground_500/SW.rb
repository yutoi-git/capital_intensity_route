require 'net/http'
require 'uri'
require 'json'
require 'csv'

csv = CSV.read('db/fixtures/csv/stations.csv')

version = 'V4'

ground_arr = []

csv.each do |sta|
  longitude = sta[3].to_f - 0.003904
  latitude = sta[4].to_f - 0.003187

  uri = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version}/meshinfo.geojson?position=#{longitude},#{latitude}&epsg=4612&attr=ARV")
  json = Net::HTTP.get(uri)
  result = JSON.parse(json, {symbolize_names: true})

  if result[:status] == "Success"
    ground = result[:features][0][:properties][:ARV]
  else
    ground = 0
  end
  ground_arr.push(ground)
end

CSV.open('db/fixtures/csv/ground_500/SW.csv', 'w') do |csv|
  ground_arr.each do |gro|
    csv << [gro]
  end
end
