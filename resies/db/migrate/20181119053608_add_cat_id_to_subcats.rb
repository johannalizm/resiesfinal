class AddCatIdToSubcats < ActiveRecord::Migration[5.1]
  def change
    add_reference :subcats, :cat, foreign_key: true
  end
end
