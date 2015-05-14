class User < ActiveRecord::Base
  has_many :child_users
  has_many :children, through: :child_users
end
