class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    @userCreation = User.new
  end

  #GET /users/:id
  def show
    @users = User.find(params[:id])
  end


  #POST /users
  def create

    uEmail = params[:user][:email]

    if !User.where(email: uEmail).exists?
      @user = User.new(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
      @user.save
    end

    redirect_to index
  end

  def profile
    render "devise/profile"
  end

end
