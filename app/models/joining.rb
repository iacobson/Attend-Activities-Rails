class Joining < ActiveRecord::Base
  belongs_to :activity
  belongs_to :attendee
end
