class BooksController < ApplicationController
  def create
    @user = User.find(params[:id])
    @book = @user.books.build(books_params)

    if @book.save
      render json: { @book }
    else
      render json: { @book.errors }
    end
  end

  def destroy
    
  end

  def update
  end

  private

  def books_params
    params.require(:book).permit(:title, :author, :completed, :category)
  end
end
