class AddTeacherToTutoring < ActiveRecord::Migration
  def change
    add_reference :tutorings, :teacher, index: true, foreign_key: true
  end
end
