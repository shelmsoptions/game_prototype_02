class RegistrationController < ApplicationController
  def new
    @user= User.new
  end

  def create
    @user = User.new
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.alias = params[:user][:alias]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation =params[:user][:password_confirmation]

    @user.valid?
    if @user.errors.blank?
      @user.save
      redirect_to home_dashboard_path
    else
      render :action => "new"
    end
  end
end