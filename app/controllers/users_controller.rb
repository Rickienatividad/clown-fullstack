class UsersController < ApplicationController
  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password"],
    )
    @user.save
    redirect_to "/"
  end

  def index
    render template: "users/index"
  end
end
