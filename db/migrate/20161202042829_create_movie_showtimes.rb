class CreateMovieShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_showtimes do |t| 
    t.timestamp :start_time

    end
  end
end
