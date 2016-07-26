class DogsController < ApplicationController
  def index
    @dog =Dog.all
    if params[:category]
      @dog = Category.find_by(name: params[:category]).dogs
    end
  end  

  def show
    @dog = Dog.find_by(id: params['id'])
    @images = @dog.images
    render 'show.html.erb'
  end
  
  def new
    render 'new.html.erb'
  end

  def create
    @dog = Dog.new( 
      breed: params['breed'],
      sex: params['sex'],
      age: params['age'],
      price: params['price']
    )
    @dog.save
    render 'create.html.erb'
  end

  def edit
    @dog = Dog.find_by(id: params['id'])
    render 'edit.html.erb'
  end

  def update
    @dog = Dog.find_by(id: params['id'])
    @dog.update(
      breed: params['breed'],
      sex: params['sex'],
      age: params['age'],
      price: params['price']
    )
    render 'update.html.erb'
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    render destroy.html.erb
  end
end
