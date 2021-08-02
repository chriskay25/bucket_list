class User < ActiveRecord::Base
  has_secure_password
  has_many :destinations, dependent: :destroy
  validates :username, presence: true, uniqueness: true
  
  def dest_count
    destinations.count
  end 

end 