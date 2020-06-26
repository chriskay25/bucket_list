class User < ActiveRecord::Base
  has_many :buckets
  has_secure_password
  validates :username, presence: true, uniqueness: true
  
  
end 