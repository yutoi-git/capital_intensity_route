class Company < ApplicationRecord
  self.primary_key = :company_code

  has_many :lines, dependent: :destroy
  has_many :stations, dependent: :destroy

  validates :company_code, presence: true, uniqueness: true
  validates :name, presence: true
end
