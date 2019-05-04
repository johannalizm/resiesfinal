class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
