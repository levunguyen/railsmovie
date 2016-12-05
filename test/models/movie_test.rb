require 'test_helper'

class MovieTest < ActiveSupport::TestCase
	

	test "should not save move without name" do
		movie = Movie.new
		assert_not movie.save,"Saved the article without a title"
	end

	test "test_no_name" do
		movie = Movie.new(:rating => 'PG', :length_minutes => '10')
		assert_not movie.save, "Model constraints did not catch null name"
	end
end
