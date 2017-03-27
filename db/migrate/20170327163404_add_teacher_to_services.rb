class AddTeacherToServices < ActiveRecord::Migration
  def change
    add_reference :services, :teacher, index: true, foreign_key: true
  end
end
