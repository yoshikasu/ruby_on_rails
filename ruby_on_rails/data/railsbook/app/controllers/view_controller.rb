class ViewController < ApplicationController

  def form_tag
    @book = Book.new
  end

  def form_for
    @book = Book.new
  end

  def field
    @book = Book.new
  end

  def html5
    @book = Book.new
  end

  def select
    @book = Book.new(publish: '技術評論社')
  end

  def col_select
    @book = Book.new(publish: '技術評論社')
    @books = Book.select(:publish).distinct
  end

  def col_radio
    @book = Book.new(publish: '技術評論社')
    @books = Book.select(:publish).distinct
  end

  def group_select
    @review = Review.new
    @authors = Author.all
  end

  def group_select2
    @review = Review.new
    @authors = Author.all
  end

  def fields
    @user = User.find(1)
  end

  def dat_select
    @book = Book.find(1)
  end

  def adopt
    render layout: 'sub'
  end

  def multi
    render layout: 'layout'
  end

  def nest
    @msg = '今日もよい天気です。'
    render layout: 'child'
  end

  def partial_basic
    @book = Book.find(2)
  end

  def partial_param
    @book = Book.find(2)
  end

  def partial_col
    @book = Book.all
  end
end
