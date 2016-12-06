class AddTheatreRefToAuditoria < ActiveRecord::Migration[5.0]
  def change
  	add_reference :auditoria, :theatres, index: true, foreign_key: true
  end
end
