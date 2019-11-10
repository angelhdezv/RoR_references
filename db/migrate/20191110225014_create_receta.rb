class CreateReceta < ActiveRecord::Migration[5.2]
  def change
    create_table :receta do |t|
      t.references :doctor, foreign_key: true
      t.references :mascota, foreign_key: true

      t.timestamps
    end
  end
end
