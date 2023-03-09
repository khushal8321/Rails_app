class ChangePhonenoTobeintegerinProducts < ActiveRecord::Migration[7.0]
  def change
    phoneno :products, :phoneno, :integer
  end
end
