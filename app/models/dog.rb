class Dog < ActiveRecord::Base
  has_many :images
  has_many :orders
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
