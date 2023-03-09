class RenamePhonetoPhoneno < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :phone, :phoneno
  end
end
