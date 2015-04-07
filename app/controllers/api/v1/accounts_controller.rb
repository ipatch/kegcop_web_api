class API::V1::AccountsController < ApplicationController

	def index
		@accounts = Account.all # model names are singular :P
		respond_to do |format|
			format.json { render :json => @accounts }
		end
	end


end