class CreateClinicas < ActiveRecord::Migration
  def change
    create_table :clinicas do |t|
      t.string :nombre
      t.string :telefono
      t.string :plan
      t.string :ubicacion

      t.timestamps null: false
    end
    add_index :clinicas, :plan, unique: false
  end
end
