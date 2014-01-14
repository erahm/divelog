class CreateWaterTypes < ActiveRecord::Migration
  def change
    create_table :water_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
