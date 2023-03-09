class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :email, :string
    add_column :products, :string, :string
  end
end
