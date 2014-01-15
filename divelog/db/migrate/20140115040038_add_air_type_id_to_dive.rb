class AddAirTypeIdToDive < ActiveRecord::Migration
  def change
    add_column :dives, :air_type_id, :integer
  end
end
