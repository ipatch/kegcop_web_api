class BubblesController < ApplicationController
	
	# see the below links for ref to disabling navbar within bubbles controller
	# http://stackoverflow.com/questions/11311090
	# http://stackoverflow.com/questions/13395153

	# TODO - figure out why bubbles don't go to top of page. :'(

	def index
		@disable_nav = true
	end

end
