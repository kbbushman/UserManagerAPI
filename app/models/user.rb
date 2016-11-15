class User < ApplicationRecord
	validates :first_name, :last_name, :user_name, :email,  presence: true
end
