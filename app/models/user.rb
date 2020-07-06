class User < ActiveRecord::Base
  has_secure_password
  has_many :destinations
  has_many :experiences
  validates :username, presence: true, uniqueness: true
  
  def dest_count
    destinations.count
  end 

  def exp_count
    experiences.count
  end 

end 