class Location
	@@id = 0
	attr_reader :id, :lat, :lng

	def initialize lat, lng
		@id = ( @@id += 1 )
		@lat = lat
		@lng = lng
	end

	# Generates a lat and lng between 0 and 100
	def Location::generate_random
		lat =  ( rand(1800000) / 10000.0 ) - 90
		lng =  ( rand(3600000) / 10000.0 ) - 180
		return Location.new(lat, lng)
	end

	def to_hash
		return { :id => @id, :lat => @lat, :lng => @lng }
	end
end
