class User < ActiveRecord::Base
  has_one :bucket
  has_secure_password
  validates :username, presence: true, uniqueness: true
  
  
end 