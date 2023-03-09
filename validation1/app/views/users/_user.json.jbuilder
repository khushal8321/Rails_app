json.extract! user, :id, :email, :user_name, :first_name, :Last_name, :plan_start_date, :plan_end_date, :Phone_no, :Zip_code, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
