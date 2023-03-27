require 'csv'

csv = CSV.read('db/fixtures/csv/new_output.csv').map{|x|x.map{|x|x.to_f}}
station = CSV.read('db/fixtures/csv/new_input.csv')
lower_six_500_average_arr = []
lower_six_500_max_arr = []
lower_six_500_min_arr = []
lower_six_1000_average_arr = []
lower_six_1000_max_arr = []
lower_six_1000_min_arr = []
upper_six_500_average_arr = []
upper_six_500_max_arr = []
upper_six_500_min_arr = []
upper_six_1000_average_arr = []
upper_six_1000_max_arr = []
upper_six_1000_min_arr = []
ground_500_average_arr = []
ground_500_max_arr = []
ground_500_min_arr = []
ground_1000_average_arr = []
ground_1000_max_arr = []
ground_1000_min_arr = []

for i in 0..csv.size - 1
  data_lower_six_500 = []
  data_lower_six_1000 = []
  data_upper_six_500 = []
  data_upper_six_1000 = []
  data_ground_500 = []
  data_ground_1000 = []
  zero_500 = []
  zero_1000 = []
  data_lower_six_500.push(csv[i][0])
  data_lower_six_500.push(csv[i][1])
  data_lower_six_500.push(csv[i][2])
  data_lower_six_500.push(csv[i][3])
  data_lower_six_500.push(csv[i][4])
  data_lower_six_500.push(csv[i][5])
  data_lower_six_500.push(csv[i][6])
  data_lower_six_500.push(csv[i][7])
  data_lower_six_500.push(csv[i][8])
  data_lower_six_1000.push(csv[i][0])
  data_lower_six_1000.push(csv[i][1])
  data_lower_six_1000.push(csv[i][2])
  data_lower_six_1000.push(csv[i][3])
  data_lower_six_1000.push(csv[i][4])
  data_lower_six_1000.push(csv[i][5])
  data_lower_six_1000.push(csv[i][6])
  data_lower_six_1000.push(csv[i][7])
  data_lower_six_1000.push(csv[i][8])
  data_lower_six_1000.push(csv[i][9])
  data_lower_six_1000.push(csv[i][10])
  data_lower_six_1000.push(csv[i][11])
  data_lower_six_1000.push(csv[i][12])
  data_lower_six_1000.push(csv[i][13])
  data_lower_six_1000.push(csv[i][14])
  data_lower_six_1000.push(csv[i][15])
  data_lower_six_1000.push(csv[i][16])
  data_upper_six_500.push(csv[i][17])
  data_upper_six_500.push(csv[i][18])
  data_upper_six_500.push(csv[i][19])
  data_upper_six_500.push(csv[i][20])
  data_upper_six_500.push(csv[i][21])
  data_upper_six_500.push(csv[i][22])
  data_upper_six_500.push(csv[i][23])
  data_upper_six_500.push(csv[i][24])
  data_upper_six_500.push(csv[i][25])
  data_upper_six_1000.push(csv[i][17])
  data_upper_six_1000.push(csv[i][18])
  data_upper_six_1000.push(csv[i][19])
  data_upper_six_1000.push(csv[i][20])
  data_upper_six_1000.push(csv[i][21])
  data_upper_six_1000.push(csv[i][22])
  data_upper_six_1000.push(csv[i][23])
  data_upper_six_1000.push(csv[i][24])
  data_upper_six_1000.push(csv[i][25])
  data_upper_six_1000.push(csv[i][26])
  data_upper_six_1000.push(csv[i][27])
  data_upper_six_1000.push(csv[i][28])
  data_upper_six_1000.push(csv[i][29])
  data_upper_six_1000.push(csv[i][30])
  data_upper_six_1000.push(csv[i][31])
  data_upper_six_1000.push(csv[i][32])
  data_upper_six_1000.push(csv[i][33])
  data_ground_500.push(csv[i][34])
  data_ground_500.push(csv[i][35])
  data_ground_500.push(csv[i][36])
  data_ground_500.push(csv[i][37])
  data_ground_500.push(csv[i][38])
  data_ground_500.push(csv[i][39])
  data_ground_500.push(csv[i][40])
  data_ground_500.push(csv[i][41])
  data_ground_500.push(csv[i][42])
  data_ground_1000.push(csv[i][34])
  data_ground_1000.push(csv[i][35])
  data_ground_1000.push(csv[i][36])
  data_ground_1000.push(csv[i][37])
  data_ground_1000.push(csv[i][38])
  data_ground_1000.push(csv[i][39])
  data_ground_1000.push(csv[i][40])
  data_ground_1000.push(csv[i][41])
  data_ground_1000.push(csv[i][42])
  data_ground_1000.push(csv[i][43])
  data_ground_1000.push(csv[i][44])
  data_ground_1000.push(csv[i][45])
  data_ground_1000.push(csv[i][46])
  data_ground_1000.push(csv[i][47])
  data_ground_1000.push(csv[i][48])
  data_ground_1000.push(csv[i][49])
  data_ground_1000.push(csv[i][50])
  zero_500.push(data_lower_six_500.count(0))
  zero_1000.push(data_lower_six_1000.count(0))

  lower_six_500_average = data_lower_six_500.sum / (9.0 - zero_500[0].to_f)
  lower_six_500_average_arr.push(lower_six_500_average.round(3))
  lower_six_500_max = data_lower_six_500.max
  lower_six_500_max_arr.push(lower_six_500_max.round(3))
  lower_six_500_min = data_lower_six_500.select { |y| y > 0.0 }.min
  lower_six_500_min_arr.push(lower_six_500_min.round(3))

  lower_six_1000_average = data_lower_six_1000.sum / (17.0 - zero_1000[0].to_f)
  lower_six_1000_average_arr.push(lower_six_1000_average.round(3))
  lower_six_1000_max = data_lower_six_1000.max
  lower_six_1000_max_arr.push(lower_six_1000_max.round(3))
  lower_six_1000_min = data_lower_six_1000.select { |y| y > 0.0 }.min
  lower_six_1000_min_arr.push(lower_six_1000_min.round(3))
  
  upper_six_500_average = data_upper_six_500.sum / (9.0 - zero_500[0].to_f)
  upper_six_500_average_arr.push(upper_six_500_average.round(3))
  upper_six_500_max = data_upper_six_500.max
  upper_six_500_max_arr.push(upper_six_500_max.round(3))
  upper_six_500_min = data_upper_six_500.select { |y| y > 0.0 }.min
  upper_six_500_min_arr.push(upper_six_500_min.round(3))

  upper_six_1000_average = data_upper_six_1000.sum / (17.0 - zero_1000[0].to_f)
  upper_six_1000_average_arr.push(upper_six_1000_average.round(3))
  upper_six_1000_max = data_upper_six_1000.max
  upper_six_1000_max_arr.push(upper_six_1000_max.round(3))
  upper_six_1000_min = data_upper_six_1000.select { |y| y > 0.0 }.min
  upper_six_1000_min_arr.push(upper_six_1000_min.round(3))

  ground_500_average = data_ground_500.sum / (9.0 - zero_500[0].to_f)
  ground_500_average_arr.push(ground_500_average.round(2))
  ground_500_max = data_ground_500.max
  ground_500_max_arr.push(ground_500_max.round(2))
  ground_500_min = data_ground_500.select { |y| y > 0.0 }.min
  ground_500_min_arr.push(ground_500_min.round(2))

  ground_1000_average = data_ground_1000.sum / (17.0 - zero_1000[0].to_f)
  ground_1000_average_arr.push(ground_1000_average.round(2))
  ground_1000_max = data_ground_1000.max
  ground_1000_max_arr.push(ground_1000_max.round(2))
  ground_1000_min = data_ground_1000.select { |y| y > 0.0 }.min
  ground_1000_min_arr.push(ground_1000_min.round(2))
end

CSV.open('db/fixtures/csv/new_calculate.csv', 'w') do |c|
  for i in 0..csv.size - 1
    c << [station[i][0], station[i][1], station[i][2], station[i][3], station[i][4], csv[i][0].round(3), lower_six_500_average_arr[i], lower_six_500_max_arr[i], lower_six_500_min_arr[i], lower_six_1000_average_arr[i], lower_six_1000_max_arr[i], lower_six_1000_min_arr[i], csv[i][17].round(3), upper_six_500_average_arr[i], upper_six_500_max_arr[i], upper_six_500_min_arr[i], upper_six_1000_average_arr[i], upper_six_1000_max_arr[i], upper_six_1000_min_arr[i], csv[i][34].round(2), ground_500_average_arr[i], ground_500_max_arr[i], ground_500_min_arr[i], ground_1000_average_arr[i], ground_1000_max_arr[i], ground_1000_min_arr[i]]
  end
end

