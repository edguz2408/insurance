class CreateSegurosSaluds < ActiveRecord::Migration
  def change
    create_table :seguros_saluds do |t|
      t.string :name
      t.string :string
      t.string :dependientes
      t.string :integer
      t.string :telefono
      t.string :celular
      t.string :email
      t.string :plan

      t.timestamps null: false
    end
  end
end
