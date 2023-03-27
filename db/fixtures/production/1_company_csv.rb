require 'csv'

csv = CSV.read('db/fixtures/csv/companies.csv')

csv.each do |line|
  company_code = line[0]
  name = line[1]

  Company.seed(:company_code) do |s|
    s.company_code = company_code
    s.name = name
  end
end
