class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }  #in: means within

  has_many :orders
  has_many :images
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

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
