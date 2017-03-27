class AddCityToTutorings < ActiveRecord::Migration
  def change
    add_reference :tutorings, :city, index: true, foreign_key: true
  end
end
