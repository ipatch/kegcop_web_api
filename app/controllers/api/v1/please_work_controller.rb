class API::V1::PleaseWorkController < ApplicationController
	
	def index
		@users = User.all # model names are singular :P
		respond_to do |format|
			format.json { render :json => @users }
		end
	end

end
