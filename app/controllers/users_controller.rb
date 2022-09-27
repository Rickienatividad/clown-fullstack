class UsersController < ApplicationController

  def create
    user = User.new (
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password"]
    )
    user.save
    render json: user.as_json
  end

end
