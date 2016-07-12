class DogsController < ApplicationController

	def index
		@dogs = Dog.all
	end	

	def show
		@dogs = Dog.find_by(id: params['id'])
		render 'show.html.erb'
	end
	
	def new
		render 'new.html.erb'
	end

	def create
		@dogs = Dog.new(	
			breed: params['breed'],
			sex: params['sex'],
			age: params['age'],
			img: params['img'],
			price: params['price']
			)
		@dogs.save
		render 'create.html.erb'
	end

	def edit
	    @dogs = Dog.find_by(id: params['id'])
    	render 'edit.html.erb'
	end

	def update
 	   @dogs = Dog.find_by(id: params['id'])
 	   @dogs.update(
		    breed: params['breed'],
			sex: params['sex'],
			age: params['age'],
			img: params['img'],
			price: params['price']
     )
      render 'update.html.erb'
    end

end
