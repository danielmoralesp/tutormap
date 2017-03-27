class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :cargo
      t.string :empresa
      t.string :mes_inicio
      t.string :dia_inicio
      t.string :mes_fin
      t.string :dia_fin
      t.string :ubicacion
      t.text :description

      t.timestamps null: false
    end
  end
end
