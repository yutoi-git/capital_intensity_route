class CreateLines < ActiveRecord::Migration[7.0]
  def change
    create_table "lines", primary_key: "line_code", id: :serial, force: :cascade do |t|
      t.integer "company_code", null: false
      t.string "name", null: false

      t.timestamps
    end
  end
end
