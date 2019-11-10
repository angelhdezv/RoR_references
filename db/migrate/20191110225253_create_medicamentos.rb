class CreateMedicamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :medicamentos do |t|
      t.string :Nombre
      t.string :laboratorio
      t.string :gramaje

      t.timestamps
    end
  end
end
