class CreateTheatres < ActiveRecord::Migration[5.0]
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_city
      t.string :address_zip_code
      t.string :phone_number

      t.timestamps
    end
  end
end
