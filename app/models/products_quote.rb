class ProductsQuote < ActiveRecord::Base
  belongs_to :product
  belongs_to :quote
  belongs_to :customer
  belongs_to :user
  
end