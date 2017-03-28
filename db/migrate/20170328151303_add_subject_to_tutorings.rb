class AddSubjectToTutorings < ActiveRecord::Migration
  def change
    add_reference :tutorings, :subject, index: true, foreign_key: true
  end
end
