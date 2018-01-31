class UsersController < ApplicationController
  # enum role: {admin: 1, patient: 2, doctor: 3}
  def index
    @users = User.all
    @current_user = current_user.id
  end

  def show
    @user = User.find(params[:id])
  end
end