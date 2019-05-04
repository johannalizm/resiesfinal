class CreateSubcats < ActiveRecord::Migration[5.1]
  def change
    create_table :subcats do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
