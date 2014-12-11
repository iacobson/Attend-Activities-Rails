class Attendee < ActiveRecord::Base

	has_many :joinings, dependent: :destroy
  has_many :activities, through: :joinings

end
