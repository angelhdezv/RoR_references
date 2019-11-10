class CreateTratamientos < ActiveRecord::Migration[5.2]
  def change
    create_table :tratamientos do |t|
      t.string :descripcion
      t.references :receta, foreign_key: true
      t.references :medicamento, foreign_key: true

      t.timestamps
    end
  end
end
