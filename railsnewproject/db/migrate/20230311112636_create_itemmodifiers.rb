class CreateItemmodifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :itemmodifiers do |t|
      t.integer :item_id
      t.integer :modifiers_id
      t.boolean :status
      t.timestamps
    end
  end
end
