class HomeController < ApplicationController
  def welcome
    @books = Book.all
  end
end
