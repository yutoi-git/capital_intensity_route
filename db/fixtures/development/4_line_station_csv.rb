require 'csv'

csv = CSV.read('db/fixtures/csv/lines_stations.csv')
i = 1

csv.each do |line|
  id = i
  line_code = line[0]
  station_code = line[1]
  order = line[2]
  i += 1

  LinesStation.seed(:id) do |s|
    s.id = id
    s.line_code = line_code
    s.station_code = station_code
    s.order = order
  end
end
