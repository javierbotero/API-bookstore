class UsersController < ApplicationController
  def loggin
    @user = User.where('email = ? AND password = ?', params[:email], params[:password])

    if @user.length > 0
      render json: { id: @user.first.id }
    else
      render nothing: true, status: 404
    end
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.includes(:comments)

    render json: @books
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render nothing: true, status: 404
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update!(user_params)
      render json: @user
    else
      render nothing: true, status: 404
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    render json: { result: 'User deleted' }
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
