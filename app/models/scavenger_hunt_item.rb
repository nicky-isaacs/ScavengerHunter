class ScavengerHuntItem < ActiveRecord::Base
  belongs_to :scavenger_hunt
  attr_accessible :description, :name, :points
end
