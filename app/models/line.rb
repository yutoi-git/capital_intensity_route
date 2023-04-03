class Line < ApplicationRecord
  self.primary_key = :line_code

  belongs_to :company, foreign_key: :company_code
  has_many :lines_stations, foreign_key: :line_code
  has_many :stations, through: :lines_stations

  validates :line_code, presence: true, uniqueness: true
  validates :name, presence: true
end
