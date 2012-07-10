class RenameFoilsTypeToFoiltype < ActiveRecord::Migration
  def change
    rename_column :foils, :type, :foil_type
  end
end
