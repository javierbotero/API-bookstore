class BooksController < ApplicationController
  def create
    @user = User.find(params[:id])
    @book = @user.books.build(book_params)

    if @book.save
      render json: @book
    else
      render json: @book.errors, status: 404
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    render json: { data: 'Book destroyed' }
  end

  def update
    @book = Book.find(pamams[:id])

    if @book.update(book_params)
      render json: { data: 'Book updated' }
    else
      render json: @book.errors, status: 404
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :completed, :category)
  end
end
