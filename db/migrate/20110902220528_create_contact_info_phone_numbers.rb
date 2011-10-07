class CreateContactInfoPhoneNumbers < ActiveRecord::Migration
  def self.up
    create_table :contact_info_phone_numbers do |t|
      t.integer :contact_info_id
      t.string :element
      t.timestamps
    end
  end

  def self.down
    drop_table :contact_info_phone_numbers
  end
end
