class AddScavengerHuntIdToScavengerHuntItems < ActiveRecord::Migration
  def change
    add_column :scavenger_hunt_items, :scaventer_hunt_id, :integer
  end
end
