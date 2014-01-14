class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.integer :dive_number
      t.integer :depth
      t.string :starting_pressure_group
      t.string :ending_pressure_group
      t.integer :weight
      t.integer :dive_time
      t.integer :starting_air
      t.integer :ending_air
      t.integer :bottom_temperature

      t.timestamps
    end
  end
end
