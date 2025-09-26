class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  # validations 

  validates :email ,presence:true , format:{with:VALID_EMAIL_REGEX},length:{minimum:10,maximum:35}
  validates :name , presence:true , length:{minimum:3,maximum:30}
  validates :role , presence:true , inclusion:{in:["user","admin"]}
  validates :mobile_number , presence:true , length:{minimum:10,maximum:10}
  
  # associations

  has_one :user_profile

end
