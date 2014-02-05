class ScavengerHunt < ActiveRecord::Base
  has_many :scavenger_hunt_items
  attr_accessible :end_date, :name, :start_date
end
