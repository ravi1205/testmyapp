class BooksController < ApplicationController
  def home
    @book  = 'home'
  end

  def info
    @book = 'info'

  end

  def catering
    @book = 'catering'
  end
end
