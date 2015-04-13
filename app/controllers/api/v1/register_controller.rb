class API::V1::RegisterController < ApplicationController

	before_filter :authorize_device_token, only: [:create]

	def index

		# retrieve unique device token and vendor ID
		device_token = (params[:device_token] || request.headers["token"] || "").strip

		api_key = APIKey.find_or_create_by_device_token(device_token)
		if api_key
			render json: {api_key: api_key.access_token}
		else
			render json: {error: :device_token}
		end	
	end

	def create

		# check for unique deviceToken / vendor ID


	end

	def update

	end

	def destroy

	end

	private
		

		def authorize_device_token

		end

end