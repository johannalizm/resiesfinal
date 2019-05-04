class AddPaiseIdToRegions < ActiveRecord::Migration[5.1]
  def change
    add_reference :regions, :paise, foreign_key: true
  end
end
