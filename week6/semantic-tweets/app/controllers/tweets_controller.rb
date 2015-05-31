class TweetsController < ApplicationController
	def index
		tw = Tweet.new
		@tweets = tw.get_homeline
		@texts = []
		@tweets.each do |tweet|
			@texts << tweet["text"]
		end
		
		@product = tw.check_semantics(@texts)
		raise @product.inspect
		#@product = [{"status"=>"PROCESSED", "themes"=>[{"title"=>"happy today", "sentiment_score"=>0.5, "strength_score"=>1.0, "sentiment_polarity"=>"neutral", "stemmed"=>"happy today", "evidence"=>4, "normalized"=>"happy today", "is_about"=>false}], "phrases"=>[{"title"=>"happy", "sentiment_score"=>0.5, "sentiment_polarity"=>"positive", "is_negated"=>false, "is_intensified"=>false, "type"=>"detected"}], "source_text"=>"happy today", "language_score"=>1.0, "sentiment_score"=>0.5, "sentiment_polarity"=>"positive", "config_id"=>"7e55aae5-a8bb-4e3b-84e3-fafef6236b68", "language"=>"English", "id"=>"6449245826"}]
		@test = {}
		@test[@product.first['id']]['sent'] = (@product.first['sentiment_polarity'])
		@test[@product.first['id']]['source_text'] = (@product.first['source_text'])
		#raise @product.inspect
		#render json: @product
	end
end