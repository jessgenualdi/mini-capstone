class User < ActiveRecord::Base
  has_many :orders
  has_many :carted_products
  has_secure_password
end
