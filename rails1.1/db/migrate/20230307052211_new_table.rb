class NewTable < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :firstname
      t.string :lastname
      t.timestamps
    end
  end
end
