class CreateDriverLicences < ActiveRecord::Migration
  def self.up
    create_table :driver_licences do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :driver_licences
  end
end
