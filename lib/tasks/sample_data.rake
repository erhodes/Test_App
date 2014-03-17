namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_agents
		make_missions
	end
end

def make_agents
	Agent.create!(name: "John Doe",
		combat: 1,
		stealth: 1,
		persuasion: 1,
		wits: 1,
		max_health: 3)
end

def make_missions
	Mission.create!(description: "Test Mission",
		duration: 10)
end