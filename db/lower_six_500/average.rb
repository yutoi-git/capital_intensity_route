require 'csv'

csv = CSV.read('db/fixtures/csv/lower_six.csv').flatten.map{|x| x.to_f}
csv_N = CSV.read('db/fixtures/csv/lower_six_500/N.csv').flatten.map{|x| x.to_f}
csv_S = CSV.read('db/fixtures/csv/lower_six_500/S.csv').flatten.map{|x| x.to_f}
csv_E = CSV.read('db/fixtures/csv/lower_six_500/E.csv').flatten.map{|x| x.to_f}
csv_W = CSV.read('db/fixtures/csv/lower_six_500/W.csv').flatten.map{|x| x.to_f}
csv_NE = CSV.read('db/fixtures/csv/lower_six_500/NE.csv').flatten.map{|x| x.to_f}
csv_NW = CSV.read('db/fixtures/csv/lower_six_500/NW.csv').flatten.map{|x| x.to_f}
csv_SE = CSV.read('db/fixtures/csv/lower_six_500/SE.csv').flatten.map{|x| x.to_f}
csv_SW = CSV.read('db/fixtures/csv/lower_six_500/SW.csv').flatten.map{|x| x.to_f}

lower_six_arr = []

for i in 0..csv.size - 1
  data = []
  zero = []
  data.push(csv[i])
  data.push(csv_N[i])
  data.push(csv_S[i])
  data.push(csv_E[i])
  data.push(csv_W[i])
  data.push(csv_NE[i])
  data.push(csv_NW[i])
  data.push(csv_SE[i])
  data.push(csv_SW[i])
  zero.push(data.count(0))
  average = data.sum / (9.0 - zero[0].to_f)
  lower_six_arr.push(average.round(3))
end

CSV.open('db/fixtures/csv/lower_six_500/average.csv', 'w') do |csv|
  lower_six_arr.each do |low|
    csv << [low]
  end
end
