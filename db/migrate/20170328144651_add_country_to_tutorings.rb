class AddCountryToTutorings < ActiveRecord::Migration
  def change
    add_reference :tutorings, :country, index: true, foreign_key: true
  end
end
