class Part < ApplicationRecord
  validates :OE_number, presence: true
  validates :name, presence: true
  validates :line_code: presence: true
  validates :price, presence: true,  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
  validates :UPC, presence: true

  belongs_to :orders

end
