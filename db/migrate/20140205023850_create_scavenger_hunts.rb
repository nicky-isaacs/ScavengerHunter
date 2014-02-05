class CreateScavengerHunts < ActiveRecord::Migration
  def change
    create_table :scavenger_hunts do |t|
      t.string :name
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
