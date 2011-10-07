class CreateChildren < ActiveRecord::Migration
  def self.up
    create_table :actor_profile_children do |t|
      t.boolean :gender
      t.date :dob
      t.integer :actor_profile_id

      t.timestamps
    end
  end

  def self.down
    drop_table :children
  end
end
