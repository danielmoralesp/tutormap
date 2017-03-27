class CreateTeachersExperiences < ActiveRecord::Migration
  def change
    create_table :teachers_experiences do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :experience, index: true, foreign_key: true
    end
  end
end
