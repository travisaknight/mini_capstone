class Product < ApplicationRecord
  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 5..500 }

  def is_discounted?
    # if price < 30 then true else false end
    # price < 30 ? true : false
    price < 30
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end
end
