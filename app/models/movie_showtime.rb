class MovieShowtime < ApplicationRecord
	belongs_to :movie
	belongs_to :theatre

	validates_presence_of :movie, :theatre
	validates_presence_of :start_time, :auditorium
	validates_presence_of :auditorium
	validates_length_of :auditorium, :maximum => 16
	
end
