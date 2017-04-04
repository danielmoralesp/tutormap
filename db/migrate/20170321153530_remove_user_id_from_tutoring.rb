class RemoveUserIdFromTutoring < ActiveRecord::Migration
  def change
    remove_reference :tutorings, :user_id, index: true, foreign_key: true
  end
end
