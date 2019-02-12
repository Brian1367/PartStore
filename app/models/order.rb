class Order < ApplicationRecord
  validates :year, presence: true,  inclusion: { in: 1900..Date.today.year },
  format: {  with: /(19|20)\d{2}/i,  message: "should be a four-digit year"}
  validates :make, presence: true
  validates :model, presence: true
  validates :category, presence: true
end
