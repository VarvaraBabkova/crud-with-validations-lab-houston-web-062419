
require 'pry'



def get_hash
	# urlstr = 'http://ws.audioscrobbler.com/2.0/?method=user.gettoptracks&user=rj&api_key=727c37ece34ad9b76a28741268bcbd5c&format=json&period=7day'
	
	urlstr = 'http://ws.audioscrobbler.com/2.0/?method=user.gettoptracks&user=rj&api_key=727c37ece34ad9b76a28741268bcbd5c&format=json&period=7day&limit=200'
	str   = RestClient.get(urlstr)
	response_hash = JSON.parse(str)
	#binding.pry


	# response_hash["toptracks"]["track"].each do |h|
	#  	puts "Artist: " + h["artist"]["name"]
	# 	puts "Song: " + h["name"]
	# 	puts
	# end
	return response_hash["toptracks"]["track"]
end

