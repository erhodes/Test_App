class AgentsController < ApplicationController
	def new
		@agent = Agent.new
	end

	def index
		@agents = Agent.all
		@missions = Mission.all
		@active_missions = ActiveMission.all
		@active_mission = ActiveMission.new
	end

	def show
		@agent = Agent.find(params[:id])
	end

	def create
		@agent = Agent.new(agent_params)
		if @agent.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	def destroy
		Agent.find(params[:id]).destroy
		redirect_to root_url
	end

	private

	def agent_params
		params.require(:agent).permit(:name,:aim,:stealth,
			:fortitude, :deception, :perception)
	end
end