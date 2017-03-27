class AddCityToTeachers < ActiveRecord::Migration
  def change
    add_reference :teachers, :city, index: true, foreign_key: true
  end
end
