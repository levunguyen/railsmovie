class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :rating_name
      t.string :description

      t.timestamps
    end
  end
end
