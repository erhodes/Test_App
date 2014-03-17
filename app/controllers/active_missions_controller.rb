class ActiveMissionsController < ApplicationController
	def create
		@active_mission=ActiveMission.new(active_mission_params)
		@active_mission.status = "In Progress"
		if @active_mission.save
			@active_mission.delay(:run_at => 10.seconds.from_now).update_attributes(:status => "Completed")
			@active_mission.goblue
			redirect_to root_url
		else
			render 'users/index'
		end
	end

	def goblue
		ActiveMission.find(params[:id]).delay(:run_at => 1.minutes.from_now).update_attributes(:status => "blue")
	end

	def debrief
		##give out mission rewards and such
		@active_mission=ActiveMission.find(params[:id])
		@agent = Agent.find(@active_mission.agent_id)
		@agent.update_attributes(:aim => @agent.aim+1)
	end

	def new
		@active_mission = ActiveMission.new
	end

	def destroy
		ActiveMission.find(params[:id]).destroy
		redirect_to root_url
	end

	private

	def active_mission_params
		params.require(:active_mission).permit(:agent_id,:mission_id)
	end
end