class User < ActiveRecord::Base
  has_many :answers
  has_many :polls

  has_secure_password
end
