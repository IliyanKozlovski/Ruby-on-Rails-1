class Sem
	require 'semantria'
	def connect(tweets)
		initial_texts = tweets
		session = Semantria::Session.new('c505996d-8f92-4fe8-a4af-5f8f2da51dc0', '0f8ddfeb-baed-4383-8e4b-3db6d5c8d99a', 'TestApp', false)
		results = []
		#callback = SessionCallbackHandler.new()
		#session.setCallbackHandler(callback)

		initial_texts.each do |text|
		  # Creates a sample document which need to be processed on Semantria
		  # Unique document ID
		  # Source text which need to be processed
		  doc = {'id' => rand(10 ** 10).to_s.rjust(10, '0'), 'text' => text}
		  # Queues document for processing on Semantria service
		  status = session.queueDocument(doc)
		  # Check status from Semantria service
		  if status == 202
		    sleep(10)
		    status = session.getProcessedDocuments()
		    status.is_a? Array and status.each do |object|
	   			results.push(object)
	   		end
	  	end
	  	return results
		end
	end
end