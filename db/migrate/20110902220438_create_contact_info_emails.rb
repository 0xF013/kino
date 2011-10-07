class CreateContactInfoEmails < ActiveRecord::Migration
  def self.up
    create_table :contact_info_emails do |t|
      t.integer :contact_info_id
      t.string :element

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_info_emails
  end
end
