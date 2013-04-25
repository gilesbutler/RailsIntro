class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email_address, :age

  has_many :books, :through => :reviews

  def is_teen?
    (12..19).member?(age)
  end

  def has_long_name?
    name_length = first_name.length + last_name.length
    name_length > 10 ? true : false
  end

  def self.all_long_name
    long_named_users = []
    User.all.each do |user|
      if user.has_long_name?
        long_named_users.push(user)
      end
    end
    long_named_users
  end

end