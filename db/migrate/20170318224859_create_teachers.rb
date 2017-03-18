class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :phone
      t.string :image_url
      t.boolean :verify_bgd_check
      t.boolean :complete_exam
      t.text :about_me
      t.string :address
      t.boolean :verify_phone

      t.timestamps null: false
    end
  end
end
