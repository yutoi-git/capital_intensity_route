class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table "stations", primary_key: "station_code", id: :serial, force: :cascade do |t|
      t.integer "company_code", null: false
      t.string "name", null: false
      t.float "longitude", null: false
      t.float "latitude", null: false
      t.float "lower_six", null: false
      t.float "upper_six", null: false

      t.timestamps
    end
  end
end
