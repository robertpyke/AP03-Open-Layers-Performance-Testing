require 'sinatra'
require 'json'
require './lib/location'

get '/' do
	redirect '/locations.json?count=10'
end

get '/locations.json?' do
	content_type :json
	count = params[:count].to_i

	locations = []
	count.times do |nth_time|
		locations << Location.generate_random.to_hash
	end

	return { :locations => locations }.to_json
end
