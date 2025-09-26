class UserProfile < ApplicationRecord

    # validations

    validates :address ,presence:true, length:{minimum:10,maximum:30}
    validates :gender , presence:true , inclusion:{in:["male","female","transgender"]}
    validates :username ,presence:true , length:{minimum:3,maximum:20},uniqueness:{case_sesitive:false}
    validates :dob, presence:true , format:{with:/^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/\d{4}$/}


    # Associations
    
end
