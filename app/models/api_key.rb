class APIKey < ActiveRecord::Base
	self.primary_key = 'access_token'

	validates_presence_of :device_token
	validate :device_token_length

	before_create :generate_access_token

	class << self
		def find_or_create_by_device_token(device_token)
			device_token = device_token.strip
			api_key = APIKey.where(device_token: device_token).first
			return api_key if api_key

			api_key = APIKey.new(device_token: device_token)
			api_key.save ? api_key : false
		end
	end
	private

	def generate_access_token
  		begin
    		self.access_token = SecureRandom.hex
  		end while self.class.exists?(access_token: access_token)
	end

	def device_token_length
		self.device_token.strip!
		unless device_token.length == 64
			errors[:device_token] << "Invalid token"
		end
	end
end