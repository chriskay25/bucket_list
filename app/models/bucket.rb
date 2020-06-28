class Bucket < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :events
  has_and_belongs_to_many :destinations
  validates :user, presence: true
end 