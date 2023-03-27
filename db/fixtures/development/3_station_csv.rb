require 'csv'

csv = CSV.read('db/fixtures/csv/stations.csv')

csv.each do |line|
  station_code = line[0]
  company_code = line[1]
  name = line[2]
  longitude = line[3]
  latitude = line[4]
  lower_six = line[5]
  lower_six_500_average = line[6]
  lower_six_500_max = line[7]
  lower_six_500_min = line[8]
  lower_six_1000_average = line[9]
  lower_six_1000_max = line[10]
  lower_six_1000_min = line[11]
  upper_six = line[12]
  upper_six_500_average = line[13]
  upper_six_500_max = line[14]
  upper_six_500_min = line[15]
  upper_six_1000_average = line[16]
  upper_six_1000_max = line[17]
  upper_six_1000_min = line[18]
  ground_500_average = line[19]
  ground = line[20]
  ground_500_max = line[21]
  ground_500_min = line[22]
  ground_1000_average = line[23]
  ground_1000_max = line[24]
  ground_1000_min = line[25]

  Station.seed(:station_code) do |s|
    s.station_code = station_code
    s.company_code = company_code
    s.name = name
    s.longitude = longitude
    s.latitude = latitude
    s.lower_six = lower_six
    s.lower_six_500_average = lower_six_500_average
    s.lower_six_500_max = lower_six_500_max
    s.lower_six_500_min = lower_six_500_min
    s.lower_six_1000_average = lower_six_1000_average
    s.lower_six_1000_max = lower_six_1000_max
    s.lower_six_1000_min = lower_six_1000_min
    s.upper_six = upper_six
    s.upper_six_500_average = upper_six_500_average
    s.upper_six_500_max = upper_six_500_max
    s.upper_six_500_min = upper_six_500_min
    s.upper_six_1000_average = upper_six_1000_average
    s.upper_six_1000_max = upper_six_1000_max
    s.upper_six_1000_min = upper_six_1000_min
    s.ground_500_average = ground_500_average
    s.ground = ground
    s.ground_500_max = ground_500_max
    s.ground_500_min = ground_500_min
    s.ground_1000_average = ground_1000_average
    s.ground_1000_max = ground_1000_max
    s.ground_1000_min = ground_1000_min
  end
end
