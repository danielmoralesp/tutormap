class AddTeacherToExperiences < ActiveRecord::Migration
  def change
    add_reference :experiences, :teacher, index: true, foreign_key: true
  end
end
