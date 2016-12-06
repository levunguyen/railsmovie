require 'test_helper'

class MovieShowtimeTest < ActiveSupport::TestCase
 


	def setup
		@theatre = Theatre.create!(
		:name => 'Ruby Palace',
		:address_line_1 => '123 Broadway',
		:address_city => 'Cambridge',
		:address_zip_code => '02139',
		:phone_number => '5555555555')
		@movie = Movie.create!(
		:name => 'Casablanca',
		:rating => 'PG',
		:length_minutes => '10')
	end
	#
	# model tests - referential integrity
	#
	def test_add_showtime_no_movie
		st = MovieShowtime.new(:theatre => @theatre,
		:auditorium => '1',
		:start_time => Time.now.xmlschema)
		assert !st.save, "Model validation allowed save with no movie"
	end

	def test_add_showtime_no_theatre
	st = MovieShowtime.new(:movie => @movie,
	:auditorium => '1',
	:start_time => Time.now.xmlschema)
	assert !st.save, "Model validation allowed save with no theatre"
	end
	#
	# database tests - referential integrity
	#
	

end
