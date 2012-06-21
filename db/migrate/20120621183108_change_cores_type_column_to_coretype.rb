class ChangeCoresTypeColumnToCoretype < ActiveRecord::Migration
  def up
    change_column :cores, :type, :coretype
  end

  def down
    change_column :cores, :coretype, :type
  end
end
