require 'test_helper'

class MovieTest < ActiveSupport::TestCase
	

	test "should not save move without name" do
		movie = Movie.new
		assert_not movie.save,"Saved the article without a title"
	end

end
