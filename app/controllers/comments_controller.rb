class CommentsController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @comments = @book.comments

    if @comments
      render json: @comments
    else
      render 'No book found', status: 404
    end
  end

  def create
    @book = Book.find(params[:id])
    @comment = @book.comments.build(body: params[:body])

    if @comment.save
      render json: @comment
    else
      render json: @comment.errors.full_messages, status: 404
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    render json: 'Comment destroyed'
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(body: params[:body])
      render json: @comment
    else
      render json: @comment.errors.full_messages, status: 404
    end
  end
end
