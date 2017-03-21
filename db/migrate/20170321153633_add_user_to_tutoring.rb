class AddUserToTutoring < ActiveRecord::Migration
  def change
    add_reference :tutorings, :user, index: true, foreign_key: true
  end
end
