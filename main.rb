require 'sinatra'
require 'json'
require './lib/location'


get '/locations.json?' do
	content_type :json
	count = params[:count].to_i

	locations = []
	count.times do |nth_time|
		locations << Location.generate_random.to_json
	end

	return { :locations => locations }.to_json
end

get '*' do
	redirect '/locations.json?count=10'
end
