require 'net/http'
require 'uri'
require 'json'
require 'csv'

csv = CSV.read('db/fixtures/csv/stations.csv')

version = 'Y2022'

lower_six_arr = []

csv.each do |sta|
  longitude = sta[3].to_f + 0.007809
  latitude = sta[4].to_f - 0.006373

  uri = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude}&epsg=4612&attr=T30_I55_PS")
  json = Net::HTTP.get(uri)
  result = JSON.parse(json, {symbolize_names: true})

  if result[:status] == "Success"
    lower_six = result[:features][0][:properties][:T30_I55_PS]
  else
    lower_six = 0
  end
  lower_six_arr.push(lower_six)
end

CSV.open('db/fixtures/csv/lower_six_1000/SE.csv', 'w') do |csv|
  lower_six_arr.each do |low|
    csv << [low]
  end
end
