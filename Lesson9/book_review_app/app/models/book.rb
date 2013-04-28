class Book < ActiveRecord::Base
  attr_accessible :title, :author

  has_many :reviews
  has_many :users, :through => :reviews

  def book_title(book_id)
    @book = Book.find(book_id).title
  end
end