class Product < ApplicationRecord
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
