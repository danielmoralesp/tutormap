class RemoveRoleIdFromTeachers < ActiveRecord::Migration
  def change
    remove_column :teachers, :role_id, :integer
  end
end
