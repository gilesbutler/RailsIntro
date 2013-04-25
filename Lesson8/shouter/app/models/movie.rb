class Movie < ActiveRecord::Base
  attr_accessible :director, :genre, :rating, :summary, :title, :year
end
