class ActiveMissionsController < ApplicationController
	def create
		@active_mission=ActiveMission.new(active_mission_params)
		@active_mission.status = "green"
		if @active_mission.save
			redirect_to root_url
		else
			render 'users/index'
		end
	end

	def new
		@active_mission = ActiveMission.new
	end

	private

	def active_mission_params
		params.require(:active_mission).permit(:agent_id,:mission_id)
	end
end