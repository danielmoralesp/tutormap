class CreateTutorings < ActiveRecord::Migration
  def change
    create_table :tutorings do |t|
      t.string :place
      t.integer :num_hours
      t.string :hour
      t.references :user_id, index: true, foreign_key: true
      t.references :teacher_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
