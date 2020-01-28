class TopicsController < ApplicationController
	def follow
       @topic = Topic.find(params[:id])
       if current_user.follow(@topic)
         flash[:notice] = "You started following #{@topic.name}"
       else
       	 flash[:alert] = "Already following."
       end
       redirect_to root_path
	end
end
