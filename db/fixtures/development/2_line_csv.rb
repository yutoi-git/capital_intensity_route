require 'csv'

csv = CSV.read('db/fixtures/csv/lines.csv')

csv.each do |line|
  line_code = line[0]
  company_code = line[1]
  name = line[2]

  Line.seed(:line_code) do |s|
    s.line_code = line_code
    s.company_code = company_code
    s.name = name
  end
end
