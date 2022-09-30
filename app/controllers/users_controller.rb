class UsersController < ApplicationController
  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      email: params[:user]["email"],
      password: params[:user]["password"],
      password_confirmation: params[:user]["password"],
    )
    if @user.save
      redirect_to "/"
    end
  end

  def index
    if not current_user
      redirect_to "/users/new"
    else
      redirect_to "/clowns"
    end
  end
end
