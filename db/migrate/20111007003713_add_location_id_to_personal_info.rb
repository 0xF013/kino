class AddLocationIdToPersonalInfo < ActiveRecord::Migration
  def change
    add_column :personal_infos, :location_id, :integer
  end
end
