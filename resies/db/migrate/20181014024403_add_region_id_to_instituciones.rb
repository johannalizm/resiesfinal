class AddRegionIdToInstituciones < ActiveRecord::Migration[5.1]
  def change
    add_reference :instituciones, :region, foreign_key: true
  end
end
