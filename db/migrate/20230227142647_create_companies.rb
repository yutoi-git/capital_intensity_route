class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table "companies", primary_key: "company_code", id: :serial, force: :cascade do |t|
      t.string "name", null: false

      t.timestamps
    end
  end
end
