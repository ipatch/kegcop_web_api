class Account < ActiveRecord::Base
	validate :check_for_root


	has_and_belongs_to_many :kegerators

	def check_for_root
		# how to setup a relationship to a different table -> column?

		# if Account.username == 'root' has_one :device_id through: :kegerators
	end
end
