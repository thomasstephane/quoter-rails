class Customer < ActiveRecord::Base
  has_many :quotes
  has_many :quotes_products
  has_many :quotes_products, through: :quotes
  has_many :products, through: :quotes_products
end