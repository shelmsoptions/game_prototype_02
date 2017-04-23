class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find( current_user.id )
    @characters = Character.where( user_id: current_user.id )
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update( user_params )
      redirect_to user_path
    else
      redirect_to "/"
    end
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :alias, :email)
  end
end
