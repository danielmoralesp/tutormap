class AddAnoToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :ano_inicio, :string
    add_column :experiences, :ano_fin, :string
  end
end
