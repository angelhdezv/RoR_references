class CreateMascota < ActiveRecord::Migration[5.2]
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.references :doctor, foreign_key: true
      t.references :duenio, foreign_key: true

      t.timestamps
    end
  end
end
