class RenameFoiltypeTypeToFoiltypeType < ActiveRecord::Migration
  def change
    rename_column :foiltypes, :type, :foiltype_type
  end
end
