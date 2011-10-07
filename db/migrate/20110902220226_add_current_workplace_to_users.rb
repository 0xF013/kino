class AddCurrentWorkplaceToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :current_workplace, :string
  end

  def self.down
    remove_column :users, :current_workplace
  end
end
