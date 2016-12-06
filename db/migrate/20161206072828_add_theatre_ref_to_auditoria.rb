class AddTheatreRefToAuditoria < ActiveRecord::Migration[5.0]
  def change
  	add_reference :auditoriums, :theatres, index: true, foreign_key: true
  end
end
