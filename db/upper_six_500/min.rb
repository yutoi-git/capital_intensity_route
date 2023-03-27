require 'csv'

csv = CSV.read('db/fixtures/csv/upper_six.csv').flatten.map{|x| x.to_f}
csv_N = CSV.read('db/fixtures/csv/upper_six_500/N.csv').flatten.map{|x| x.to_f}
csv_S = CSV.read('db/fixtures/csv/upper_six_500/S.csv').flatten.map{|x| x.to_f}
csv_E = CSV.read('db/fixtures/csv/upper_six_500/E.csv').flatten.map{|x| x.to_f}
csv_W = CSV.read('db/fixtures/csv/upper_six_500/W.csv').flatten.map{|x| x.to_f}
csv_NE = CSV.read('db/fixtures/csv/upper_six_500/NE.csv').flatten.map{|x| x.to_f}
csv_NW = CSV.read('db/fixtures/csv/upper_six_500/NW.csv').flatten.map{|x| x.to_f}
csv_SE = CSV.read('db/fixtures/csv/upper_six_500/SE.csv').flatten.map{|x| x.to_f}
csv_SW = CSV.read('db/fixtures/csv/upper_six_500/SW.csv').flatten.map{|x| x.to_f}

upper_six_arr = []

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
  min = data.select { |y| y > 0.0 }.min
  upper_six_arr.push(min.round(3))
end

CSV.open('db/fixtures/csv/upper_six_500/min.csv', 'w') do |csv|
  upper_six_arr.each do |up|
    csv << [up]
  end
end
