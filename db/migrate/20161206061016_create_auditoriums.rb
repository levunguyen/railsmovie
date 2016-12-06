class CreateAuditoriums < ActiveRecord::Migration[5.0]
  def change
    create_table :auditoriums do |t|
    
      t.integer :auditorium_identifier
      t.integer :seats_available

      t.timestamps
    end
  end
end
