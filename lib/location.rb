class Location
	attr_reader :lat, :lng

	def initialize lat, lng
		@lat = lat
		@lng = lng
	end

	# Generates a lat and lng between 0 and 10
	def Location::generate_random
		return Location.new(rand(10000) / 1000.0, rand(10000) / 1000.0)
	end

	def to_json
		return { :lat => @lat, :lng => @lng }
	end
end
