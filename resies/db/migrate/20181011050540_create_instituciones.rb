class CreateInstituciones < ActiveRecord::Migration[5.1]
  def change
    create_table :instituciones do |t|
      t.string :nombre
      t.string :direccion
      t.integer :codigopostal

      t.timestamps
    end
  end
end
