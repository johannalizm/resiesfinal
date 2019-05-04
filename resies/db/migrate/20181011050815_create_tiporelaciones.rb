class CreateTiporelaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :tiporelaciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
