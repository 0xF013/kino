class AddColumnsToActorProfiles < ActiveRecord::Migration
  def self.up
    add_column :actor_profiles, :additional_information, :string
    add_column :actor_profiles, :special_skills, :string
    add_column :actor_profiles, :passport_expiry_date, :date
    add_column :actor_profiles, :driver_licence_id, :integer
  end

  def self.down
    remove_column :actor_profiles, :special_skills
    remove_column :actor_profiles, :additional_information
    remove_column :actor_profiles, :passport_expiry_date
    remove_column :actor_profiles, :driver_licence_id
  end
end
