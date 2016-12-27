class UsersController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @shareseshes = @user.shareseshes
  end
end
