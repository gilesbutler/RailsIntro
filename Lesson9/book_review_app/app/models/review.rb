class Review < ActiveRecord::Base
  attr_accessible :review

  belongs_to :users
  belongs_to :books
end