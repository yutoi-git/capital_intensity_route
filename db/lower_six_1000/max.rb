require 'csv'

csv = CSV.read('db/fixtures/csv/lower_six.csv').flatten.map{|x| x.to_f}
csv_500N = CSV.read('db/fixtures/csv/lower_six_500/N.csv').flatten.map{|x| x.to_f}
csv_500S = CSV.read('db/fixtures/csv/lower_six_500/S.csv').flatten.map{|x| x.to_f}
csv_500E = CSV.read('db/fixtures/csv/lower_six_500/E.csv').flatten.map{|x| x.to_f}
csv_500W = CSV.read('db/fixtures/csv/lower_six_500/W.csv').flatten.map{|x| x.to_f}
csv_500NE = CSV.read('db/fixtures/csv/lower_six_500/NE.csv').flatten.map{|x| x.to_f}
csv_500NW = CSV.read('db/fixtures/csv/lower_six_500/NW.csv').flatten.map{|x| x.to_f}
csv_500SE = CSV.read('db/fixtures/csv/lower_six_500/SE.csv').flatten.map{|x| x.to_f}
csv_500SW = CSV.read('db/fixtures/csv/lower_six_500/SW.csv').flatten.map{|x| x.to_f}
csv_1000N = CSV.read('db/fixtures/csv/lower_six_1000/N.csv').flatten.map{|x| x.to_f}
csv_1000S = CSV.read('db/fixtures/csv/lower_six_1000/S.csv').flatten.map{|x| x.to_f}
csv_1000E = CSV.read('db/fixtures/csv/lower_six_1000/E.csv').flatten.map{|x| x.to_f}
csv_1000W = CSV.read('db/fixtures/csv/lower_six_1000/W.csv').flatten.map{|x| x.to_f}
csv_1000NE = CSV.read('db/fixtures/csv/lower_six_1000/NE.csv').flatten.map{|x| x.to_f}
csv_1000NW = CSV.read('db/fixtures/csv/lower_six_1000/NW.csv').flatten.map{|x| x.to_f}
csv_1000SE = CSV.read('db/fixtures/csv/lower_six_1000/SE.csv').flatten.map{|x| x.to_f}
csv_1000SW = CSV.read('db/fixtures/csv/lower_six_1000/SW.csv').flatten.map{|x| x.to_f}

lower_six_arr = []

for i in 0..csv.size - 1
  data = []
  data.push(csv[i])
  data.push(csv_500N[i])
  data.push(csv_500S[i])
  data.push(csv_500E[i])
  data.push(csv_500W[i])
  data.push(csv_500NE[i])
  data.push(csv_500NW[i])
  data.push(csv_500SE[i])
  data.push(csv_500SW[i])
  data.push(csv_1000N[i])
  data.push(csv_1000S[i])
  data.push(csv_1000E[i])
  data.push(csv_1000W[i])
  data.push(csv_1000NE[i])
  data.push(csv_1000NW[i])
  data.push(csv_1000SE[i])
  data.push(csv_1000SW[i])
  max = data.max
  lower_six_arr.push(max.round(3))
end

CSV.open('db/fixtures/csv/lower_six_1000/max.csv', 'w') do |csv|
  lower_six_arr.each do |low|
    csv << [low]
  end
end
