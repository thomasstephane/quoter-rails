class User < ActiveRecord::Base
  has_secure_password

  has_many :quotes
  has_many :customers, through: :quotes
  has_many :quotes_products
  has_many :quotes_products, through: :quotes
  has_many :products, through: :quotes_products
  has_many :products

  validates :name, presence: true, uniqueness: true
  validates :password_digest, presence: true
  attr_accessible :name, :first_name, :last_name, :status, :password_digest, :email, :password

  
end