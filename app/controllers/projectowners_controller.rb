class ProjectownersController < ApplicationController

	def new

	end

	def create
	@user = User.find_by(id: current_user.id)

	@user.projectowners.build(projectowner_params)

   if @user.save

   	flash[:sucess] = "Project created "

redirect_to user_path(current_user)

	else

   render 'new'

	end
end
private
def projectowner_params

params.require(:projectowner).permit(:name,:startdate,:enddate)
end
end
