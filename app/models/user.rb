class User < ApplicationRecord
    # below is needed for using bcrypt
    has_secure_password

    validates :name, presence: true 
    # if an email is inputted with uppercase or lowercase letters, it will not allow for matches 
    validates :email, presence: true, :uniqueness => {:case_sensitive => false} 
    validates :password, presence: true

    has_many :favorites
end