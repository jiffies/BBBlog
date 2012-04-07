class Admin < ActiveRecord::Base
	attr_accessible :email, :password
	validates :email, presence: true
	validates :password, presence: true , length:{minimum:6}
	
	def password
		@password
	end

	def password=(pass)
		return unless pass
		@password = pass
		generate_password(pass)
	end
	
	def self.authentication(email, password)
		admin = Admin.find_by_email(email)
		if admin && Digest::SHA256.hexdigest(password+admin.salt) == admin.password_digest
			return admin
		end
		false
	end
	
	private
		def generate_password(pass)
			salt = Array.new(10){rand(1024).to_s(36)}.join
			self.salt, self.password_digest =
			salt, Digest::SHA256.hexdigest(pass+salt)	
		end
end
