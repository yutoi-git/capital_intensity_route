# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_24_114014) do
  create_table "companies", primary_key: "company_code", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_code"], name: "company_code", unique: true
  end

  create_table "lines", primary_key: "line_code", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "company_code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_code"], name: "line_code", unique: true
  end

  create_table "lines_stations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "line_code", null: false
    t.integer "station_code", null: false
    t.integer "order", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_code", "station_code"], name: "index_lines_stations_on_line_code_and_station_code", unique: true
  end

  create_table "stations", primary_key: "station_code", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "company_code", null: false
    t.string "name", null: false
    t.float "longitude", null: false
    t.float "latitude", null: false
    t.float "lower_six", null: false
    t.float "lower_six_500_average", null: false
    t.float "lower_six_500_max", null: false
    t.float "lower_six_500_min", null: false
    t.float "lower_six_1000_average", null: false
    t.float "lower_six_1000_max", null: false
    t.float "lower_six_1000_min", null: false
    t.float "upper_six", null: false
    t.float "upper_six_500_average", null: false
    t.float "upper_six_500_max", null: false
    t.float "upper_six_500_min", null: false
    t.float "upper_six_1000_average", null: false
    t.float "upper_six_1000_max", null: false
    t.float "upper_six_1000_min", null: false
    t.float "ground_500_average", null: false
    t.float "ground", null: false
    t.float "ground_500_max", null: false
    t.float "ground_500_min", null: false
    t.float "ground_1000_average", null: false
    t.float "ground_1000_max", null: false
    t.float "ground_1000_min", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["station_code"], name: "station_code", unique: true
  end

end
