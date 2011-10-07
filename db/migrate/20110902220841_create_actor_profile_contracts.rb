class CreateActorProfileContracts < ActiveRecord::Migration
  def self.up
    create_table :actor_profile_contracts do |t|
      t.integer :actor_profile_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :actor_profile_contracts
  end
end
