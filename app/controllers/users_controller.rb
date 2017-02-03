class UsersController < ApplicationController
  def new
  end

  def create
    user = User.create(name:params[:name], alias:params[:alias], email:params[:email], password:params[:password], password_confirm:params[:password_confirm])
    if !user.errors.messages.empty?
      flash[:errors] = user.errors.messages
      redirect_to '/users'
    else user && user.authenticate(params[:password])
      puts '********'
      puts user.errors.messages
      puts '********'
      session[:id] = user.id
      redirect_to "/ideas"
    end
  end

  def login
    user = User.find_by_email params[:email]
    if user && user.authenticate(params[:password])
      session[:id] = user[:id]
      redirect_to '/ideas'
    else
      flash[:errors] = {:login => ['Incorrect Password']}
      redirect_to '/users'
    end
  end

  def index
  end

  def show
    @user = User.find_by_id params[:id]
  end

  def logout
    reset_session
    redirect_to "/users"
  end
end
