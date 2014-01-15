class AddWaterTypeIdToDive < ActiveRecord::Migration
  def change
    add_column :dives, :water_type_id, :integer
  end
end
