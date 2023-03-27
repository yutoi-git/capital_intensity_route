require 'net/http'
require 'uri'
require 'json'
require 'csv'

csv = CSV.read('db/fixtures/csv/stations.csv')

version = 'Y2022'

upper_six_arr = []

csv.each do |sta|
  longitude = sta[3].to_f + 0.005522
  latitude = sta[4]

  uri = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude}&epsg=4612&attr=T30_I60_PS")
  json = Net::HTTP.get(uri)
  result = JSON.parse(json, {symbolize_names: true})

  if result[:status] == "Success"
    upper_six = result[:features][0][:properties][:T30_I60_PS]
  else
    upper_six = 0
  end
  upper_six_arr.push(upper_six)
end

CSV.open('db/fixtures/csv/upper_six_500/E.csv', 'w') do |csv|
  upper_six_arr.each do |up|
    csv << [up]
  end
end
