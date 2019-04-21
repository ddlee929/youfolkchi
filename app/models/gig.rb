class Gig < ApplicationRecord
  validates_presence_of :date, :location, :artists
end
