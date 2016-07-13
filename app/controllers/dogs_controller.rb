class DogsController < ApplicationController
  def index
    @dog = Dog.all
  end  

  def show
    @dog = Dog.find_by(id: params['id'])
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
      img: params['img'],
      price: params['price']
    )
    @dog.save
    flash[:success] = "This dog has been added to our Adoption center"
    redirect_to "/dog_store/#{@dog.id}"
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
      img: params['img'],
      price: params['price']
    )
    render 'update.html.erb'
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.delete
    redirect_to '/dog_store'
  end
end
