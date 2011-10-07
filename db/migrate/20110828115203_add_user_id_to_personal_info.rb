class AddUserIdToPersonalInfo < ActiveRecord::Migration
  def self.up
    add_column :personal_infos, :user_id, :integer
  end

  def self.down
    remove_column :personal_infos, :user_id
  end
end
