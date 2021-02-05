class UsersController < ApplicationController
  def show
    @user = User.where('email = ? AND password = ?', params[:email], params[:password])
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
