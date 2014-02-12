class MissionsController < ApplicationController
	def new
		@mission = Mission.new
	end

	def create
		@mission = Mission.new(mission_params)
		if @mission.save
			redirect_to agents_path
		else
			redirect 'new'
		end
	end

	def destory
		Mission.find(params[:id].destroy)
	end
	
	private
		def mission_params
			params.require(:mission).permit(:description,:duration)
		end
end
