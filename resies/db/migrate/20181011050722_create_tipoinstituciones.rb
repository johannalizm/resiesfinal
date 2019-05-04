class CreateTipoinstituciones < ActiveRecord::Migration[5.1]
  def change
    create_table :tipoinstituciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
