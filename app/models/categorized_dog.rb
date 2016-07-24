class CategorizedDog < ActiveRecord::Base
  belongs_to :dog
  belongs_to :category
end
