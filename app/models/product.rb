class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }  #in: means within

  def discount
    price < 14
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
