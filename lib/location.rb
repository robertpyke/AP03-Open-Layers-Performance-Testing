class Location
	attr_reader :lat, :lng

	def initialize lat, lng
		@lat = lat
		@lng = lng
	end

	# Generates a lat and lng between 0 and 100
	def Location::generate_random
		lat =  ( rand(180) / 1 ) - 90
		lng =  ( rand(360) / 1 ) - 180
		return Location.new(lat, lng)
	end

	def to_hash
		return { :lat => @lat, :lng => @lng }
	end
end
