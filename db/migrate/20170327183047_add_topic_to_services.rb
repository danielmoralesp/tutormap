class AddTopicToServices < ActiveRecord::Migration
  def change
    add_reference :services, :topic, index: true, foreign_key: true
  end
end
