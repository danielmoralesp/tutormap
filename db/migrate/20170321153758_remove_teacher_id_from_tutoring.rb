class RemoveTeacherIdFromTutoring < ActiveRecord::Migration
  def change
    remove_reference :tutorings, :teacher_id, index: true, foreign_key: true
  end
end
