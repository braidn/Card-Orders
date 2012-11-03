class AddMatCategoryIdToMaterial < ActiveRecord::Migration
  def change
    add_column :materials, :matCategory_id, :integer
  end
end
