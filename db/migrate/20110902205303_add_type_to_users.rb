class AddTypeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :string
    remove_column :users, :type_id
  end

  def self.down
    add_column :users, :type_id, :integer
    remove_column :users, :type
  end
end
