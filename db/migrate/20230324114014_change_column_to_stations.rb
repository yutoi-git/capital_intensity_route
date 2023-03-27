class ChangeColumnToStations < ActiveRecord::Migration[7.0]
  def change
    change_column :stations, :created_at, :datetime, null: false, after: :ground_1000_min
    change_column :stations, :updated_at, :datetime, null: false, after: :created_at
  end
end
