class UsersController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created an account!'
      redirect_to '/dog_store'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to 'show.html.erb'
    end
  end
end
