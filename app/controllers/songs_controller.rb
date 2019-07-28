class SongsController < ApplicationController

	before_action :current_song, only: [:show, :edit, :update]

	def index
		@songs = Song.all
	end

	def show 
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)
		if @song.valid?
			@song.save
			redirect_to song_path(@song)
		else
			flash[:errors]= @song.errors.full_messages
			redirect_to new_song_path
		end
	end

	def edit
	end

	def update
		@song.update(song_params)
		redirect_to song_path(@song)
	end

	private

	def song_params
		params.require(:song).permit(:title, :artist_name, :released, :release_year, :genre)
	end

	def current_song
		@song = Song.find(params[:id])
	end

end
