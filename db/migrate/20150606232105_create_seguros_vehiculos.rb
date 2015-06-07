class CreateSegurosVehiculos < ActiveRecord::Migration
  def change
    create_table :seguros_vehiculos do |t|
      t.string :nombre
      t.string :telefono
      t.string :celular
      t.string :email
      t.string :marca
      t.string :model
      t.string :compania
      t.string :año

      t.timestamps null: false
    end
  end
end
