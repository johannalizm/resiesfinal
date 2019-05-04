class AddTipoinstitucioneIdInstituciones < ActiveRecord::Migration[5.1]
  def change
    add_reference :instituciones, :tipoinstitucione, foreign_key: true
  end
end
