class CreateAlternativas < ActiveRecord::Migration[5.1]
  def change
    create_table :alternativas do |t|
      t.string :nombre
      t.string :puntaje
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
