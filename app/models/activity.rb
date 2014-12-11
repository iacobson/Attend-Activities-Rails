class Activity < ActiveRecord::Base
  belongs_to :user

  has_many :joinings, dependent: :destroy
  has_many :attendees, through: :joinings
end
