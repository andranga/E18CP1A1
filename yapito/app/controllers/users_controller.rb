class UsersController < ApplicationController
	before_action :authenticate_user!
	def profile
		@user = User.random(current_user.id)
	end
end
