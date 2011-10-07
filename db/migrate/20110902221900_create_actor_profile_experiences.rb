class CreateActorProfileExperiences < ActiveRecord::Migration
  def self.up
    create_table :actor_profile_experiences do |t|
      t.integer :type_id
      t.integer :actor_profile_id
      t.string :description
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end

  def self.down
    drop_table :actor_profile_experiences
  end
end
