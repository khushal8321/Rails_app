class RemoveLastNameFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :lastname, :string
  end
end
