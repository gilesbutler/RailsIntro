class Book < ActiveRecord::Base
  attr_accessible :title, :author

  has_many :users, :through => :reviews
end