class RemoveConcatviewFromBoxes < ActiveRecord::Migration
  def up
    remove_column :boxes, :concatview
      end

  def down
    add_column :boxes, :concatview, :string
  end
end
