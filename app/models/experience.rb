class Experience < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"  
  validates :name, presence: true
    
end
