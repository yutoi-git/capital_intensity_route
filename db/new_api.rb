require 'net/http'
require 'uri'
require 'json'
require 'csv'

csv = CSV.read('db/fixtures/csv/new_input.csv')

version_eq = 'Y2022'
version_gro = 'V4'

lower_six_arr = []
lower_six_500N_arr = []
lower_six_500S_arr = []
lower_six_500E_arr = []
lower_six_500W_arr = []
lower_six_500NE_arr = []
lower_six_500NW_arr = []
lower_six_500SE_arr = []
lower_six_500SW_arr = []
lower_six_1000N_arr = []
lower_six_1000S_arr = []
lower_six_1000E_arr = []
lower_six_1000W_arr = []
lower_six_1000NE_arr = []
lower_six_1000NW_arr = []
lower_six_1000SE_arr = []
lower_six_1000SW_arr = []
upper_six_arr = []
upper_six_500N_arr = []
upper_six_500S_arr = []
upper_six_500E_arr = []
upper_six_500W_arr = []
upper_six_500NE_arr = []
upper_six_500NW_arr = []
upper_six_500SE_arr = []
upper_six_500SW_arr = []
upper_six_1000N_arr = []
upper_six_1000S_arr = []
upper_six_1000E_arr = []
upper_six_1000W_arr = []
upper_six_1000NE_arr = []
upper_six_1000NW_arr = []
upper_six_1000SE_arr = []
upper_six_1000SW_arr = []
ground_arr = []
ground_500N_arr = []
ground_500S_arr = []
ground_500E_arr = []
ground_500W_arr = []
ground_500NE_arr = []
ground_500NW_arr = []
ground_500SE_arr = []
ground_500SW_arr = []
ground_1000N_arr = []
ground_1000S_arr = []
ground_1000E_arr = []
ground_1000W_arr = []
ground_1000NE_arr = []
ground_1000NW_arr = []
ground_1000SE_arr = []
ground_1000SW_arr = []

csv.each do |sta|

  longitude = sta[3]
  latitude = sta[4]


  uri_lower_six = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500N = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f + 0.004506}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500S = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f - 0.004506}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500E = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.005522},#{latitude}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500W = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.005522},#{latitude}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500NE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.003904},#{latitude.to_f + 0.003187}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500NW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.003904},#{latitude.to_f + 0.003187}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500SE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.003904},#{latitude.to_f - 0.003187}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_500SW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.003904},#{latitude.to_f - 0.003187}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000N = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f + 0.009013}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000S = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f - 0.009013}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000E = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.011043},#{latitude}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000W = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.011043},#{latitude}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000NE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.007809},#{latitude.to_f + 0.006373}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000NW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.007809},#{latitude.to_f + 0.006373}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000SE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.007809},#{latitude.to_f - 0.006373}&epsg=4612&attr=T30_I55_PS")
  uri_lower_six_1000SW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.007809},#{latitude.to_f - 0.006373}&epsg=4612&attr=T30_I55_PS")

  uri_upper_six = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500N = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f + 0.004506}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500S = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f - 0.004506}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500E = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.005522},#{latitude}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500W = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.005522},#{latitude}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500NE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.003904},#{latitude.to_f + 0.003187}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500NW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.003904},#{latitude.to_f + 0.003187}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500SE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.003904},#{latitude.to_f - 0.003187}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_500SW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.003904},#{latitude.to_f - 0.003187}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000N = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f + 0.009013}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000S = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude},#{latitude.to_f - 0.009013}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000E = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.011043},#{latitude}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000W = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.011043},#{latitude}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000NE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.007809},#{latitude.to_f + 0.006373}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000NW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.007809},#{latitude.to_f + 0.006373}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000SE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f + 0.007809},#{latitude.to_f - 0.006373}&epsg=4612&attr=T30_I60_PS")
  uri_upper_six_1000SW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/pshm/#{version_eq}/AVR/TTL_MTTL/meshinfo.geojson?position=#{longitude.to_f - 0.007809},#{latitude.to_f - 0.006373}&epsg=4612&attr=T30_I60_PS")

  uri_ground = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude},#{latitude}&epsg=4612&attr=ARV")
  uri_ground_500N = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude},#{latitude.to_f + 0.004506}&epsg=4612&attr=ARV")
  uri_ground_500S = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude},#{latitude.to_f - 0.004506}&epsg=4612&attr=ARV")
  uri_ground_500E = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f + 0.005522},#{latitude}&epsg=4612&attr=ARV")
  uri_ground_500W = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f - 0.005522},#{latitude}&epsg=4612&attr=ARV")
  uri_ground_500NE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f + 0.003904},#{latitude.to_f + 0.003187}&epsg=4612&attr=ARV")
  uri_ground_500NW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f - 0.003904},#{latitude.to_f + 0.003187}&epsg=4612&attr=ARV")
  uri_ground_500SE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f + 0.003904},#{latitude.to_f - 0.003187}&epsg=4612&attr=ARV")
  uri_ground_500SW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f - 0.003904},#{latitude.to_f - 0.003187}&epsg=4612&attr=ARV")
  uri_ground_1000N = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude},#{latitude.to_f + 0.009013}&epsg=4612&attr=ARV")
  uri_ground_1000S = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude},#{latitude.to_f - 0.009013}&epsg=4612&attr=ARV")
  uri_ground_1000E = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f + 0.011043},#{latitude}&epsg=4612&attr=ARV")
  uri_ground_1000W = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f - 0.011043},#{latitude}&epsg=4612&attr=ARV")
  uri_ground_1000NE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f + 0.007809},#{latitude.to_f + 0.006373}&epsg=4612&attr=ARV")
  uri_ground_1000NW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f - 0.007809},#{latitude.to_f + 0.006373}&epsg=4612&attr=ARV")
  uri_ground_1000SE = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f + 0.007809},#{latitude.to_f - 0.006373}&epsg=4612&attr=ARV")
  uri_ground_1000SW = URI.parse("https://www.j-shis.bosai.go.jp/map/api/sstrct/#{version_gro}/meshinfo.geojson?position=#{longitude.to_f - 0.007809},#{latitude.to_f - 0.006373}&epsg=4612&attr=ARV")


  json_lower_six = Net::HTTP.get(uri_lower_six)
  json_lower_six_500N = Net::HTTP.get(uri_lower_six_500N)
  json_lower_six_500S = Net::HTTP.get(uri_lower_six_500S)
  json_lower_six_500E = Net::HTTP.get(uri_lower_six_500E)
  json_lower_six_500W = Net::HTTP.get(uri_lower_six_500W)
  json_lower_six_500NE = Net::HTTP.get(uri_lower_six_500NE)
  json_lower_six_500NW = Net::HTTP.get(uri_lower_six_500NW)
  json_lower_six_500SE = Net::HTTP.get(uri_lower_six_500SE)
  json_lower_six_500SW = Net::HTTP.get(uri_lower_six_500SW)
  json_lower_six_1000N = Net::HTTP.get(uri_lower_six_1000N)
  json_lower_six_1000S = Net::HTTP.get(uri_lower_six_1000S)
  json_lower_six_1000E = Net::HTTP.get(uri_lower_six_1000E)
  json_lower_six_1000W = Net::HTTP.get(uri_lower_six_1000W)
  json_lower_six_1000NE = Net::HTTP.get(uri_lower_six_1000NE)
  json_lower_six_1000NW = Net::HTTP.get(uri_lower_six_1000NW)
  json_lower_six_1000SE = Net::HTTP.get(uri_lower_six_1000SE)
  json_lower_six_1000SW = Net::HTTP.get(uri_lower_six_1000SW)

  json_upper_six = Net::HTTP.get(uri_upper_six)
  json_upper_six_500N = Net::HTTP.get(uri_upper_six_500N)
  json_upper_six_500S = Net::HTTP.get(uri_upper_six_500S)
  json_upper_six_500E = Net::HTTP.get(uri_upper_six_500E)
  json_upper_six_500W = Net::HTTP.get(uri_upper_six_500W)
  json_upper_six_500NE = Net::HTTP.get(uri_upper_six_500NE)
  json_upper_six_500NW = Net::HTTP.get(uri_upper_six_500NW)
  json_upper_six_500SE = Net::HTTP.get(uri_upper_six_500SE)
  json_upper_six_500SW = Net::HTTP.get(uri_upper_six_500SW)
  json_upper_six_1000N = Net::HTTP.get(uri_upper_six_1000N)
  json_upper_six_1000S = Net::HTTP.get(uri_upper_six_1000S)
  json_upper_six_1000E = Net::HTTP.get(uri_upper_six_1000E)
  json_upper_six_1000W = Net::HTTP.get(uri_upper_six_1000W)
  json_upper_six_1000NE = Net::HTTP.get(uri_upper_six_1000NE)
  json_upper_six_1000NW = Net::HTTP.get(uri_upper_six_1000NW)
  json_upper_six_1000SE = Net::HTTP.get(uri_upper_six_1000SE)
  json_upper_six_1000SW = Net::HTTP.get(uri_upper_six_1000SW)

  json_ground = Net::HTTP.get(uri_ground)
  json_ground_500N = Net::HTTP.get(uri_ground_500N)
  json_ground_500S = Net::HTTP.get(uri_ground_500S)
  json_ground_500E = Net::HTTP.get(uri_ground_500E)
  json_ground_500W = Net::HTTP.get(uri_ground_500W)
  json_ground_500NE = Net::HTTP.get(uri_ground_500NE)
  json_ground_500NW = Net::HTTP.get(uri_ground_500NW)
  json_ground_500SE = Net::HTTP.get(uri_ground_500SE)
  json_ground_500SW = Net::HTTP.get(uri_ground_500SW)
  json_ground_1000N = Net::HTTP.get(uri_ground_1000N)
  json_ground_1000S = Net::HTTP.get(uri_ground_1000S)
  json_ground_1000E = Net::HTTP.get(uri_ground_1000E)
  json_ground_1000W = Net::HTTP.get(uri_ground_1000W)
  json_ground_1000NE = Net::HTTP.get(uri_ground_1000NE)
  json_ground_1000NW = Net::HTTP.get(uri_ground_1000NW)
  json_ground_1000SE = Net::HTTP.get(uri_ground_1000SE)
  json_ground_1000SW = Net::HTTP.get(uri_ground_1000SW)


  result_lower_six = JSON.parse(json_lower_six, {symbolize_names: true})
  result_lower_six_500N = JSON.parse(json_lower_six_500N, {symbolize_names: true})
  result_lower_six_500S = JSON.parse(json_lower_six_500S, {symbolize_names: true})
  result_lower_six_500E = JSON.parse(json_lower_six_500E, {symbolize_names: true})
  result_lower_six_500W = JSON.parse(json_lower_six_500W, {symbolize_names: true})
  result_lower_six_500NE = JSON.parse(json_lower_six_500NE, {symbolize_names: true})
  result_lower_six_500NW = JSON.parse(json_lower_six_500NW, {symbolize_names: true})
  result_lower_six_500SE = JSON.parse(json_lower_six_500SE, {symbolize_names: true})
  result_lower_six_500SW = JSON.parse(json_lower_six_500SW, {symbolize_names: true})
  result_lower_six_1000N = JSON.parse(json_lower_six_1000N, {symbolize_names: true})
  result_lower_six_1000S = JSON.parse(json_lower_six_1000S, {symbolize_names: true})
  result_lower_six_1000E = JSON.parse(json_lower_six_1000E, {symbolize_names: true})
  result_lower_six_1000W = JSON.parse(json_lower_six_1000W, {symbolize_names: true})
  result_lower_six_1000NE = JSON.parse(json_lower_six_1000NE, {symbolize_names: true})
  result_lower_six_1000NW = JSON.parse(json_lower_six_1000NW, {symbolize_names: true})
  result_lower_six_1000SE = JSON.parse(json_lower_six_1000SE, {symbolize_names: true})
  result_lower_six_1000SW = JSON.parse(json_lower_six_1000SW, {symbolize_names: true})

  result_upper_six = JSON.parse(json_upper_six, {symbolize_names: true})
  result_upper_six_500N = JSON.parse(json_upper_six_500N, {symbolize_names: true})
  result_upper_six_500S = JSON.parse(json_upper_six_500S, {symbolize_names: true})
  result_upper_six_500E = JSON.parse(json_upper_six_500E, {symbolize_names: true})
  result_upper_six_500W = JSON.parse(json_upper_six_500W, {symbolize_names: true})
  result_upper_six_500NE = JSON.parse(json_upper_six_500NE, {symbolize_names: true})
  result_upper_six_500NW = JSON.parse(json_upper_six_500NW, {symbolize_names: true})
  result_upper_six_500SE = JSON.parse(json_upper_six_500SE, {symbolize_names: true})
  result_upper_six_500SW = JSON.parse(json_upper_six_500SW, {symbolize_names: true})
  result_upper_six_1000N = JSON.parse(json_upper_six_1000N, {symbolize_names: true})
  result_upper_six_1000S = JSON.parse(json_upper_six_1000S, {symbolize_names: true})
  result_upper_six_1000E = JSON.parse(json_upper_six_1000E, {symbolize_names: true})
  result_upper_six_1000W = JSON.parse(json_upper_six_1000W, {symbolize_names: true})
  result_upper_six_1000NE = JSON.parse(json_upper_six_1000NE, {symbolize_names: true})
  result_upper_six_1000NW = JSON.parse(json_upper_six_1000NW, {symbolize_names: true})
  result_upper_six_1000SE = JSON.parse(json_upper_six_1000SE, {symbolize_names: true})
  result_upper_six_1000SW = JSON.parse(json_upper_six_1000SW, {symbolize_names: true})

  result_ground = JSON.parse(json_ground, {symbolize_names: true})
  result_ground_500N = JSON.parse(json_ground_500N, {symbolize_names: true})
  result_ground_500S = JSON.parse(json_ground_500S, {symbolize_names: true})
  result_ground_500E = JSON.parse(json_ground_500E, {symbolize_names: true})
  result_ground_500W = JSON.parse(json_ground_500W, {symbolize_names: true})
  result_ground_500NE = JSON.parse(json_ground_500NE, {symbolize_names: true})
  result_ground_500NW = JSON.parse(json_ground_500NW, {symbolize_names: true})
  result_ground_500SE = JSON.parse(json_ground_500SE, {symbolize_names: true})
  result_ground_500SW = JSON.parse(json_ground_500SW, {symbolize_names: true})
  result_ground_1000N = JSON.parse(json_ground_1000N, {symbolize_names: true})
  result_ground_1000S = JSON.parse(json_ground_1000S, {symbolize_names: true})
  result_ground_1000E = JSON.parse(json_ground_1000E, {symbolize_names: true})
  result_ground_1000W = JSON.parse(json_ground_1000W, {symbolize_names: true})
  result_ground_1000NE = JSON.parse(json_ground_1000NE, {symbolize_names: true})
  result_ground_1000NW = JSON.parse(json_ground_1000NW, {symbolize_names: true})
  result_ground_1000SE = JSON.parse(json_ground_1000SE, {symbolize_names: true})
  result_ground_1000SW = JSON.parse(json_ground_1000SW, {symbolize_names: true})


  if result_lower_six[:status] == "Success"
    lower_six = result_lower_six[:features][0][:properties][:T30_I55_PS]
    upper_six = result_upper_six[:features][0][:properties][:T30_I60_PS]
    ground = result_ground[:features][0][:properties][:ARV]
  else
    lower_six = 0
    upper_six = 0
    ground = 0
  end

  if result_lower_six_500N[:status] == "Success"
    lower_six_500N = result_lower_six_500N[:features][0][:properties][:T30_I55_PS]
    upper_six_500N = result_upper_six_500N[:features][0][:properties][:T30_I60_PS]
    ground_500N = result_ground_500N[:features][0][:properties][:ARV]
  else
    lower_six_500N = 0
    upper_six_500N = 0
    ground_500N = 0
  end

  if result_lower_six_500S[:status] == "Success"
    lower_six_500S = result_lower_six_500S[:features][0][:properties][:T30_I55_PS]
    upper_six_500S = result_upper_six_500S[:features][0][:properties][:T30_I60_PS]
    ground_500S = result_ground_500S[:features][0][:properties][:ARV]
  else
    lower_six_500S = 0
    upper_six_500S = 0
    ground_500S = 0
  end

  if result_lower_six_500E[:status] == "Success"
    lower_six_500E = result_lower_six_500E[:features][0][:properties][:T30_I55_PS]
    upper_six_500E = result_upper_six_500E[:features][0][:properties][:T30_I60_PS]
    ground_500E = result_ground_500E[:features][0][:properties][:ARV]
  else
    lower_six_500E = 0
    upper_six_500E = 0
    ground_500E = 0
  end

  if result_lower_six_500W[:status] == "Success"
    lower_six_500W = result_lower_six_500W[:features][0][:properties][:T30_I55_PS]
    upper_six_500W = result_upper_six_500W[:features][0][:properties][:T30_I60_PS]
    ground_500W = result_ground_500W[:features][0][:properties][:ARV]
  else
    lower_six_500W = 0
    upper_six_500W = 0
    ground_500W = 0
  end

  if result_lower_six_500NE[:status] == "Success"
    lower_six_500NE = result_lower_six_500NE[:features][0][:properties][:T30_I55_PS]
    upper_six_500NE = result_upper_six_500NE[:features][0][:properties][:T30_I60_PS]
    ground_500NE = result_ground_500NE[:features][0][:properties][:ARV]
  else
    lower_six_500NE = 0
    upper_six_500NE = 0
    ground_500NE = 0
  end

  if result_lower_six_500NW[:status] == "Success"
    lower_six_500NW = result_lower_six_500NW[:features][0][:properties][:T30_I55_PS]
    upper_six_500NW = result_upper_six_500NW[:features][0][:properties][:T30_I60_PS]
    ground_500NW = result_ground_500NW[:features][0][:properties][:ARV]
  else
    lower_six_500NW = 0
    upper_six_500NW = 0
    ground_500NW = 0
  end

  if result_lower_six_500SE[:status] == "Success"
    lower_six_500SE = result_lower_six_500SE[:features][0][:properties][:T30_I55_PS]
    upper_six_500SE = result_upper_six_500SE[:features][0][:properties][:T30_I60_PS]
    ground_500SE = result_ground_500SE[:features][0][:properties][:ARV]
  else
    lower_six_500SE = 0
    upper_six_500SE = 0
    ground_500SE = 0
  end

  if result_lower_six_500SW[:status] == "Success"
    lower_six_500SW = result_lower_six_500SW[:features][0][:properties][:T30_I55_PS]
    upper_six_500SW = result_upper_six_500SW[:features][0][:properties][:T30_I60_PS]
    ground_500SW = result_ground_500SW[:features][0][:properties][:ARV]
  else
    lower_six_500SW = 0
    upper_six_500SW = 0
    ground_500SW = 0
  end

  if result_lower_six_1000N[:status] == "Success"
    lower_six_1000N = result_lower_six_1000N[:features][0][:properties][:T30_I55_PS]
    upper_six_1000N = result_upper_six_1000N[:features][0][:properties][:T30_I60_PS]
    ground_1000N = result_ground_1000N[:features][0][:properties][:ARV]
  else
    lower_six_1000N = 0
    upper_six_1000N = 0
    ground_1000N = 0
  end

  if result_lower_six_1000S[:status] == "Success"
    lower_six_1000S = result_lower_six_1000S[:features][0][:properties][:T30_I55_PS]
    upper_six_1000S = result_upper_six_1000S[:features][0][:properties][:T30_I60_PS]
    ground_1000S = result_ground_1000S[:features][0][:properties][:ARV]
  else
    lower_six_1000S = 0
    upper_six_1000S = 0
    ground_1000S = 0
  end

  if result_lower_six_1000E[:status] == "Success"
    lower_six_1000E = result_lower_six_1000E[:features][0][:properties][:T30_I55_PS]
    upper_six_1000E = result_upper_six_1000E[:features][0][:properties][:T30_I60_PS]
    ground_1000E = result_ground_1000E[:features][0][:properties][:ARV]
  else
    lower_six_1000E = 0
    upper_six_1000E = 0
    ground_1000E = 0
  end

  if result_lower_six_1000W[:status] == "Success"
    lower_six_1000W = result_lower_six_1000W[:features][0][:properties][:T30_I55_PS]
    upper_six_1000W = result_upper_six_1000W[:features][0][:properties][:T30_I60_PS]
    ground_1000W = result_ground_1000W[:features][0][:properties][:ARV]
  else
    lower_six_1000W = 0
    upper_six_1000W = 0
    ground_1000W = 0
  end

  if result_lower_six_1000NE[:status] == "Success"
    lower_six_1000NE = result_lower_six_1000NE[:features][0][:properties][:T30_I55_PS]
    upper_six_1000NE = result_upper_six_1000NE[:features][0][:properties][:T30_I60_PS]
    ground_1000NE = result_ground_1000NE[:features][0][:properties][:ARV]
  else
    lower_six_1000NE = 0
    upper_six_1000NE = 0
    ground_1000NE = 0
  end

  if result_lower_six_1000NW[:status] == "Success"
    lower_six_1000NW = result_lower_six_1000NW[:features][0][:properties][:T30_I55_PS]
    upper_six_1000NW = result_upper_six_1000NW[:features][0][:properties][:T30_I60_PS]
    ground_1000NW = result_ground_1000NW[:features][0][:properties][:ARV]
  else
    lower_six_1000NW = 0
    upper_six_1000NW = 0
    ground_1000NW = 0
  end

  if result_lower_six_1000SE[:status] == "Success"
    lower_six_1000SE = result_lower_six_1000SE[:features][0][:properties][:T30_I55_PS]
    upper_six_1000SE = result_upper_six_1000SE[:features][0][:properties][:T30_I60_PS]
    ground_1000SE = result_ground_1000SE[:features][0][:properties][:ARV]
  else
    lower_six_1000SE = 0
    upper_six_1000SE = 0
    ground_1000SE = 0
  end

  if result_lower_six_1000SW[:status] == "Success"
    lower_six_1000SW = result_lower_six_1000SW[:features][0][:properties][:T30_I55_PS]
    upper_six_1000SW = result_upper_six_1000SW[:features][0][:properties][:T30_I60_PS]
    ground_1000SW = result_ground_1000SW[:features][0][:properties][:ARV]
  else
    lower_six_1000SW = 0
    upper_six_1000SW = 0
    ground_1000SW = 0
  end

  lower_six_arr.push(lower_six)
  lower_six_500N_arr.push(lower_six_500N)
  lower_six_500S_arr.push(lower_six_500S)
  lower_six_500E_arr.push(lower_six_500E)
  lower_six_500W_arr.push(lower_six_500W)
  lower_six_500NE_arr.push(lower_six_500NE)
  lower_six_500NW_arr.push(lower_six_500NW)
  lower_six_500SE_arr.push(lower_six_500SE)
  lower_six_500SW_arr.push(lower_six_500SW)
  lower_six_1000N_arr.push(lower_six_1000N)
  lower_six_1000S_arr.push(lower_six_1000S)
  lower_six_1000E_arr.push(lower_six_1000E)
  lower_six_1000W_arr.push(lower_six_1000W)
  lower_six_1000NE_arr.push(lower_six_1000NE)
  lower_six_1000NW_arr.push(lower_six_1000NW)
  lower_six_1000SE_arr.push(lower_six_1000SE)
  lower_six_1000SW_arr.push(lower_six_1000SW)

  upper_six_arr.push(upper_six)
  upper_six_500N_arr.push(upper_six_500N)
  upper_six_500S_arr.push(upper_six_500S)
  upper_six_500E_arr.push(upper_six_500E)
  upper_six_500W_arr.push(upper_six_500W)
  upper_six_500NE_arr.push(upper_six_500NE)
  upper_six_500NW_arr.push(upper_six_500NW)
  upper_six_500SE_arr.push(upper_six_500SE)
  upper_six_500SW_arr.push(upper_six_500SW)
  upper_six_1000N_arr.push(upper_six_1000N)
  upper_six_1000S_arr.push(upper_six_1000S)
  upper_six_1000E_arr.push(upper_six_1000E)
  upper_six_1000W_arr.push(upper_six_1000W)
  upper_six_1000NE_arr.push(upper_six_1000NE)
  upper_six_1000NW_arr.push(upper_six_1000NW)
  upper_six_1000SE_arr.push(upper_six_1000SE)
  upper_six_1000SW_arr.push(upper_six_1000SW)

  ground_arr.push(ground)
  ground_500N_arr.push(ground_500N)
  ground_500S_arr.push(ground_500S)
  ground_500E_arr.push(ground_500E)
  ground_500W_arr.push(ground_500W)
  ground_500NE_arr.push(ground_500NE)
  ground_500NW_arr.push(ground_500NW)
  ground_500SE_arr.push(ground_500SE)
  ground_500SW_arr.push(ground_500SW)
  ground_1000N_arr.push(ground_1000N)
  ground_1000S_arr.push(ground_1000S)
  ground_1000E_arr.push(ground_1000E)
  ground_1000W_arr.push(ground_1000W)
  ground_1000NE_arr.push(ground_1000NE)
  ground_1000NW_arr.push(ground_1000NW)
  ground_1000SE_arr.push(ground_1000SE)
  ground_1000SW_arr.push(ground_1000SW)
end

CSV.open('db/fixtures/csv/new_output.csv', 'w') do |c|
  for i in 0..csv.size - 1
    c << [lower_six_arr[i], lower_six_500N_arr[i], lower_six_500S_arr[i], lower_six_500E_arr[i], lower_six_500W_arr[i], lower_six_500NE_arr[i], lower_six_500NW_arr[i], lower_six_500SE_arr[i], lower_six_500SW_arr[i], lower_six_1000N_arr[i], lower_six_1000S_arr[i], lower_six_1000E_arr[i], lower_six_1000W_arr[i], lower_six_1000NE_arr[i], lower_six_1000NW_arr[i], lower_six_1000SE_arr[i], lower_six_1000SW_arr[i], upper_six_arr[i], upper_six_500N_arr[i], upper_six_500S_arr[i], upper_six_500E_arr[i], upper_six_500W_arr[i], upper_six_500NE_arr[i], upper_six_500NW_arr[i], upper_six_500SE_arr[i], upper_six_500SW_arr[i], upper_six_1000N_arr[i], upper_six_1000S_arr[i], upper_six_1000E_arr[i], upper_six_1000W_arr[i], upper_six_1000NE_arr[i], upper_six_1000NW_arr[i], upper_six_1000SE_arr[i], upper_six_1000SW_arr[i], ground_arr[i], ground_500N_arr[i], ground_500S_arr[i], ground_500E_arr[i], ground_500W_arr[i], ground_500NE_arr[i], ground_500NW_arr[i], ground_500SE_arr[i], ground_500SW_arr[i], ground_1000N_arr[i], ground_1000S_arr[i], ground_1000E_arr[i], ground_1000W_arr[i], ground_1000NE_arr[i], ground_1000NW_arr[i], ground_1000SE_arr[i], ground_1000SW_arr[i]]
  end
end
