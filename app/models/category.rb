class Category < ActiveRecord::Base
  has_many :categorized_dogs
  has_many :dogs, through: :categorized_dogs
end
