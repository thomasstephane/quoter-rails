class Quote 
  belongs_to :user
  belongs_to :customer
  has_many :quotes_products
  has_many :products, through: :quotes_products
end