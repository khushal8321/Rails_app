class User < ApplicationRecord
    
    
   
    before_create:newuser
    after_create :createuser
    before_save :login_has_value
    after_save :test4
    before_commit :age_cal
    after_commit:agea

   before_destroy:test5
    def newuser
        puts "this is new"
    end
    def createuser
        if lastname.nil?
            puts "lastname is empty"
        end  
    end

    def test4
        puts "--------------------------------------------------------------"
         @name = firstname.capitalize
         puts @name
         
        puts "--------------------------------------------------------------"
    end
    def login_has_value
        if email.nil?
            self.email = email unless email.blank?
            puts "emails is blank"
        end
    end
    def age_cal
        t=Time.new
        if age.to_i <= t.year
            puts "is valid"
        end

    end
    def agea
        t=Time.new
        cal=t.year - age.to_i
        puts "age is #{cal}"
    end
    def test5
        puts "record will be distroyed"
    end
    
end
