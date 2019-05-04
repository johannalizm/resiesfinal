class AddUserIdToFormularios < ActiveRecord::Migration[5.1]
  def change
    add_reference :formularios, :user, foreign_key: true
  end
end
