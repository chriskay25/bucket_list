class User < ActiveRecord::Base
  has_secure_password
  has_many :destinations, dependent: :destroy
  has_many :experiences, dependent: :destroy
  validates :username, presence: true, uniqueness: true
  
  def dest_count
    destinations.count
  end 

  def exp_count
    experiences.count
  end 

end 