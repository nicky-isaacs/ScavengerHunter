class FixColumName < ActiveRecord::Migration
	
	# scavenger_hunt_items.scavenger_hunt_id
	def change
	  rename_column :scavenger_hunt_items, :scaventer_hunt_id, :scavenger_hunt_id
  end
end
