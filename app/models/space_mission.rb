class SpaceMission < ApplicationRecord
  validates_presence_of :title, :trip_length
end
