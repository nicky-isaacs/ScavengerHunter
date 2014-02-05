class AddCompletedToScavengerHuntItems < ActiveRecord::Migration
  def change
    add_column :scavenger_hunt_items, :completed, :boolean
  end
end
