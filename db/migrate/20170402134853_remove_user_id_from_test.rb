class RemoveUserIdFromTest < ActiveRecord::Migration
  def change
    remove_column :tests, :user_id, :string
  end
end
