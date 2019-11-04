class User < ApplicationRecord
	
	has_many :personal_items
	has_many :items, through: :personal_items
	
	validates :username, uniqueness: true
	validates_associated :personal_items
	validates :password, presence: true, on: :create
	has_secure_password


	def self.g_random_code(number)
        array = Array('A'..'Z') + Array('a'..'z')
        Array.new(number) { array.sample }.join
    end      

    def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(email: auth.info.email).first_or_initialize do |user|

            user.email = auth.info.email
            user.username = auth.info.name + rand(1..1000).to_s
            user.name = auth.info.name
            password = self.g_random_code(19)
            user.password = password

        end
    end

end
