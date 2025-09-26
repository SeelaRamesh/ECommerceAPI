class UserAddress < ApplicationRecord

    # validations
    validates :shipping_address , presence:true , length:{minimum:10,maximum:60}
    validates :city             , presence:true , length:{minimum:2,maximum:30}
    validates :state             , presence:true , length:{minimum:2,maximum:30}

    # associations 
    
end
