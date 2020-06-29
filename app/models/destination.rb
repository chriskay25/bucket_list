class Destination < ActiveRecord::Base
  belongs_to :user
  validates :country, presence: true
  validates :city, presence: true

end 