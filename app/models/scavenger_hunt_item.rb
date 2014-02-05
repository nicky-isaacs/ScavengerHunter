class ScavengerHuntItem < ActiveRecord::Base
  belongs_to :scavenger_hunt
  attr_accessible :description, :name, :points, :completed

	def is_completed?
		self.completed
	end

	def complete_item!
		self.completed = true
		self.save!
	end
end
