class User < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, uniqueness: true

    validates :first_name, presence: true
    validates :plan_end_date, comparison: { greater_than: :plan_start_date }

    validates :Phone_no, length: { is: 10 }
    validates :Zip_code, length: { minimum: 6 }

    validates :password, length: { in: 6..20 }

end
