class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.integer :dive_number
      t.integer :depth
      t.string :pressure_group
      t.integer :weight

      t.timestamps
    end
  end
end
