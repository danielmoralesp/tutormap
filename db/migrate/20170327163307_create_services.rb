class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :type
      t.integer :academ_level
      t.integer :price_per_hour
      t.integer :min_hours
      t.string :time_anticipated

      t.timestamps null: false
    end
  end
end
