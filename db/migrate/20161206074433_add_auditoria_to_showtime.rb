class AddAuditoriaToShowtime < ActiveRecord::Migration[5.0]
  def change
  	add_reference :movie_showtimes, :auditoriums, index: true, foreign_key: true
  	add_reference :movie_showtimes, :movies, index: true, foreign_key: true
  end
end
