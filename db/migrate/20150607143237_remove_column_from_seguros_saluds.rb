class RemoveColumnFromSegurosSaluds < ActiveRecord::Migration
  def change
    remove_column :seguros_saluds, :integer, :string
  end
end
