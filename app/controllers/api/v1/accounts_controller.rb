class API::V1::AccountsController < ApplicationController

	# http_basic_authenticate_with name: "foo", password: "bar"
	# before_filter :restrict_access

	def index
		@accounts = Account.all # model names are singular :P
		respond_to do |format|
			format.json { render :json => @accounts }
		end
	end

	private

		def restrict_access
  			authenticate_or_request_with_http_token do |token, options|
    			ApiKey.exists?(access_token: token)
  		end
  	end
end