class RenameCoresTypeColumn < ActiveRecord::Migration
  def change
    rename_column :cores, :type, :core_type
  end
end
