class Dog < ActiveRecord::Base
  has_many :categorized_dogs
  has_many :categories, through: :categorized_dogs
  has_many :images
  has_many :orders
  has_many :carted_products
  

  def discount?
    price.to_f < 300 
  end

  def tax
    price.to_i * 0.09
  end  

  def total
    tax + price.to_i
  end
end
