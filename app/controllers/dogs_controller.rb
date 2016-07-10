class DogsController < ApplicationController

	def index
		@dogs = Dog.all
	end	

	def show
		@dogs = Dog.find_by(id: params['id'])
		render 'show.html.erb'
	end
	

end
