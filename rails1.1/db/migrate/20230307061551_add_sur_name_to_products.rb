class AddSurNameToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :surname, :string
    add_index :products, :surname
  end
end
