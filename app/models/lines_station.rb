class LinesStation < ApplicationRecord
  belongs_to :line, foreign_key: :line_code
  belongs_to :station, foreign_key: :station_code

  validates :line_code, uniqueness: { scope: :station_code }
end
