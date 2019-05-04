class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :indicador
      t.string :pregunta
      t.string :tiporespuesta

      t.timestamps
    end
  end
end
