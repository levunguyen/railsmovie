class Movie < ApplicationRecord
	has_many :movie_showtimes
	 validates :name, presence: true
end
