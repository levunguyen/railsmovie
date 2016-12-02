class CreateMovieShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_showtimes do |t|
      t.integer :movie_id
      t.integer :theatre_id
      t.string :auditorium
      t.timestamp :start_time

      t.timestamps
    end
  end
end
