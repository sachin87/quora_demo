class UsersController < ApplicationController

	def follow
       @user = User.find(params[:id])
       if current_user.follow(@user)
         flash[:notice] = "You started following #{@user.email}."
       else
       	 flash[:alert] = "Already following."
       end
       redirect_to root_path
	end
end
