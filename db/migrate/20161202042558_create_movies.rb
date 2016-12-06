class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :length_minutes
      t.integer :rating_id

      t.timestamps
    end
  end
end
