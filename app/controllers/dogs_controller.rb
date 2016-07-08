class DogsController < ApplicationController

	def dog
		@dogs = Dog.all
		render 'dog_store.html.erb'
	end	

end
