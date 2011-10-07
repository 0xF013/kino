class CreateContactInfos < ActiveRecord::Migration
  def self.up
    create_table :contact_infos do |t|
      t.string :website
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :contact_infos
  end
end
