class AddScavengerHuntIdToScavengerHunts < ActiveRecord::Migration
  def change
    add_column :scavenger_hunts, :scavenger_hunt_id, :integer
  end
end
