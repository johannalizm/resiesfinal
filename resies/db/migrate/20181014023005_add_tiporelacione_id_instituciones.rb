class AddTiporelacioneIdInstituciones < ActiveRecord::Migration[5.1]
  def change
    add_reference :instituciones, :tiporelacione, foreign_key: true
  end
end
