class Destination < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"
  validates :country, presence: true
  validates :city, presence: true

end 