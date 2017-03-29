class AddSubjectToServices < ActiveRecord::Migration
  def change
    add_reference :services, :subject, index: true, foreign_key: true
  end
end
