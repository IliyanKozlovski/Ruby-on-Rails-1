class Tweet 
	#include ActiveModel::Model
	#require 'net/http'
	def get_homeline
			client = Twitter::REST::Client.new do |config|
			config.consumer_key         = "IlMQjLkxdEJdfCSKXTYZxxLGA"
			config.consumer_secret      = "6F5N7TYScVrLOprHMaBm7dRSyTYW3GuDI4r021fCe9smurtdgN"
			config.access_token         = "3233708379-rwLC41307Lw6eiLyzduLpSONbtnOn01ejqlTtVu"
			config.access_token_secret  = "4HlNXHXcuxKA03FGEy0uWbRr2EQH38rAcTllwzRLAL1KT"	
		end

		@timeline = JSON.parse(client.home_timeline.to_json)
	end

	def check_semantics(tweets)
		sem = Sem.new
		sem.connect(tweets)
	end
end