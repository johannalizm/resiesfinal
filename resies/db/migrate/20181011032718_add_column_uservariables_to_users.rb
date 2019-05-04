class AddColumnUservariablesToUsers < ActiveRecord::Migration[5.1]
  def change
    # Para definir si es Administrador o Usuario Normal
    add_column :users, :rol, :string
  end
end
