class UsersController < ApplicationController
  before_action :check_login, only: [:show]

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    #file = params[:user][:image]
    #@user.set_image(file)

    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end
  def show
    @user = User.find(params[:id])
    @favorites_blogs = @user.favorite_blogs
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image)
  end
  def check_login
    if !logged_in? 
      redirect_to new_session_path
    end
  end
end
