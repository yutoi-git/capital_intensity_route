require 'csv'

csv = CSV.read('db/fixtures/csv/ground.csv').flatten.map{|x| x.to_f}
csv_N = CSV.read('db/fixtures/csv/ground_500/N.csv').flatten.map{|x| x.to_f}
csv_S = CSV.read('db/fixtures/csv/ground_500/S.csv').flatten.map{|x| x.to_f}
csv_E = CSV.read('db/fixtures/csv/ground_500/E.csv').flatten.map{|x| x.to_f}
csv_W = CSV.read('db/fixtures/csv/ground_500/W.csv').flatten.map{|x| x.to_f}
csv_NE = CSV.read('db/fixtures/csv/ground_500/NE.csv').flatten.map{|x| x.to_f}
csv_NW = CSV.read('db/fixtures/csv/ground_500/NW.csv').flatten.map{|x| x.to_f}
csv_SE = CSV.read('db/fixtures/csv/ground_500/SE.csv').flatten.map{|x| x.to_f}
csv_SW = CSV.read('db/fixtures/csv/ground_500/SW.csv').flatten.map{|x| x.to_f}

ground_arr = []

for i in 0..csv.size - 1
  data = []
  data.push(csv[i])
  data.push(csv_N[i])
  data.push(csv_S[i])
  data.push(csv_E[i])
  data.push(csv_W[i])
  data.push(csv_NE[i])
  data.push(csv_NW[i])
  data.push(csv_SE[i])
  data.push(csv_SW[i])
  max = data.max
  ground_arr.push(max.round(2))
end

CSV.open('db/fixtures/csv/ground_500/max.csv', 'w') do |csv|
  ground_arr.each do |gro|
    csv << [gro]
  end
end
