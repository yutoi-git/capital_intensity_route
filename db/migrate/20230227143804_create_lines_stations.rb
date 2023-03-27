class CreateLinesStations < ActiveRecord::Migration[7.0]
  def change
    create_table "lines_stations", force: :cascade do |t|
      t.integer "line_code", null: false
      t.integer "station_code", null: false
      t.integer "order", null: false
      t.index ["line_code", "station_code"], name: "index_lines_stations_on_line_code_and_station_code", unique: true

      t.timestamps
    end
  end
end
