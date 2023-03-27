class AddColumnsToStations < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :lower_six_500_max, :float, null: false
    add_column :stations, :lower_six_500_min, :float, null: false
    add_column :stations, :lower_six_1000_average, :float, null: false
    add_column :stations, :lower_six_1000_max, :float, null: false
    add_column :stations, :lower_six_1000_min, :float, null: false
    add_column :stations, :upper_six, :float, null: false
    add_column :stations, :upper_six_500_average, :float, null: false
    add_column :stations, :upper_six_500_max, :float, null: false
    add_column :stations, :upper_six_500_min, :float, null: false
    add_column :stations, :upper_six_1000_average, :float, null: false
    add_column :stations, :upper_six_1000_max, :float, null: false
    add_column :stations, :upper_six_1000_min, :float, null: false
    add_column :stations, :ground_500_average, :float, null: false
    add_column :stations, :ground, :float, null: false
    add_column :stations, :ground_500_max, :float, null: false
    add_column :stations, :ground_500_min, :float, null: false
    add_column :stations, :ground_1000_average, :float, null: false
    add_column :stations, :ground_1000_max, :float, null: false
    add_column :stations, :ground_1000_min, :float, null: false
  end
end
