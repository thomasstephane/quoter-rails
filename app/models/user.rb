class User < ActiveRecord::Base
  has_secure_password

  has_many :quotes
  has_many :customers, through: :quotes
  has_many :quotes_products
  has_many :quotes_products, through: :quotes
  has_many :products, through: :quotes_products
  has_many :products
  
end