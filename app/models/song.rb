class Song < ApplicationRecord

	current_year = 2019

	validates :title, presence: true
	validates :artist_name, presence: true
	validates :genre, format: { with: /\A[- a-zA-Z]+\z/}

	validates :released, inclusion: { in: [true, false] }
	validates :release_year,  presence: true, if: :released
	validates :release_year, numericality: { only_integer: true, less_than_or_equal_to: current_year }, if: :released
end
