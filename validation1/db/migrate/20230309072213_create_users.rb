class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_name
      t.string :first_name
      t.string :Last_name
      t.date :plan_start_date
      t.date :plan_end_date
      t.string :Phone_no
      t.string :Zip_code
      t.string :password

      t.timestamps
    end
  end
end
