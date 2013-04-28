class Review < ActiveRecord::Base
  attr_accessible :review, :book_id

  belongs_to :users
  belongs_to :books

end