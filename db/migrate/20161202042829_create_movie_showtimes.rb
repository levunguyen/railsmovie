class CreateMovieShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_showtimes do |t|
      t.integer :movie_id
      t.integer :auditorium_id
      t.timestamp :start_time

    end
  end
end
