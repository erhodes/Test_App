class ActiveMission < ActiveRecord::Base

	def goblue
		status = "blue"
		update_attributes(:status => "blue")
	end
end
