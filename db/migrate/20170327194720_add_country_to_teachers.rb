class AddCountryToTeachers < ActiveRecord::Migration
  def change
    add_reference :teachers, :country, index: true, foreign_key: true
  end
end
