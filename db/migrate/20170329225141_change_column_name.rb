class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :services, :type, :type_tutoring
  end
end
