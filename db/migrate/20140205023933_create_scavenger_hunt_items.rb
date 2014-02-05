class CreateScavengerHuntItems < ActiveRecord::Migration
  def change
    create_table :scavenger_hunt_items do |t|
      t.string :name
      t.string :description
      t.integer :points

      t.timestamps
    end
  end
end
