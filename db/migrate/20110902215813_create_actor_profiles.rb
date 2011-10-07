class CreateActorProfiles < ActiveRecord::Migration
  def self.up
    create_table :actor_profiles do |t|
      t.integer :user_id
      t.integer :weight
      t.integer :height
      t.string :emploi
      t.string :professional_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :actor_profiles
  end
end
