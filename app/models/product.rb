class Product < ActiveRecord::Base
  has_many :products_quotes
  has_many :quotes, through: :products_quotes
  has_many :customers, through: :quotes
  belongs_to :user
end