class CreateAirTypes < ActiveRecord::Migration
  def change
    create_table :air_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
