class AddSubcatIdToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :subcat, foreign_key: true
  end
end
