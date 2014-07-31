class User < ActiveRecord::Base

	has_secure_password

	before_save :default_values
	
	# specify which fields to expose to the sign-up form
	# attr_accessible :email, :password, :password_confirmation

	# attr_accessor :password
	# before_save :encrypted_password

	# validates_confirmation_of :password
	# validates_presenece_of :password, :on => :create
	# validates_presenece_of :email

	# the "has_secure_password" provides validation for
	# the password fields.

	validates_uniqueness_of :email

	# def self.authenticate(email, password)
	# 	user = find_by_email(email)
	# 	if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	# 		user
	# 	else
	# 		nil
	# 	end
	# end

	# def encrypt_password
	# 	if password.present?
	# 		self.password_salt = BCrypt::Engine.generate_salt
	# 		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	# 	end
	# end

	# set the default value of credits for a user when they create
	# an account from "nil" to "0"
	# see http://stackoverflow.com/questions/1550688/
	def default_values
    	self.credit ||= "0"
  	end
end
