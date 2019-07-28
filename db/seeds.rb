
require 'rest-client'
require 'json'

require_relative "get_lastfm"

Song.destroy_all

response_hash = get_hash

response_hash.each do |h|

	Song.create(title: h["name"], artist_name: h["artist"]["name"], released: true, release_year: 2000)
	
end
