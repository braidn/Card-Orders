class RenameDieTypeColumnToDietype < ActiveRecord::Migration
  def change
    rename_column :dies, :type, :die_type
  end
end
