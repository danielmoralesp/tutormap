class AddTopicToTutorings < ActiveRecord::Migration
  def change
    add_reference :tutorings, :topic, index: true, foreign_key: true
  end
end
