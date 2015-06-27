class CreateFarmacia < ActiveRecord::Migration
  def change
    create_table :farmacia do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion
      t.string :ubicacion
      t.string :plan

      t.timestamps null: false
    end
  end
end
