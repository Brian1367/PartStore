class Part < ApplicationRecord
  validates :OE_number, presence: true
  validates :name, presence: true
  validates :line_code, presence: true
  validates :price, presence: true

  validates :UPC, presence: true
  validates :weight, presence: true

  belongs_to :car
  has_many :order_items

  default_scope { where(active: true) }



end
