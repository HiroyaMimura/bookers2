class BooksController < ApplicationController

  def create
    book = Book.new(book_params)
    book.save
    redirect_to user_path(id: current_user)
  end

  def index
    @book = Book.new
    @user = current_user
  end

  def show
  end

  def edit
  end

    private

  def book_params
     params.require(:book).permit(:title,:body)
  end
end
