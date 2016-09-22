class User < ActiveRecord::Base
  has_many :goals
  has_secure_password
  attr_reader :password
  validates :name, presence:true
end
