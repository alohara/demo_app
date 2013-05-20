class User < ActiveRecord::Base
  attr_accessible :created, :email, :last_login, :name, :password
  has_many :microposts
end
