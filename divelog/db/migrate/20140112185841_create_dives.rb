class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.integer :dive_number
      t.integer :depth
      t.string :starting_pressure_group
      t.string :ending_pressure_group
      t.integer :weight
      t.integer :dive_time

      t.timestamps
    end
  end
end
