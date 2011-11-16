class CreateBoxtypes < ActiveRecord::Migration
  def change
    create_table :boxtypes do |t|
      t.integer :boxid
      t.string :boxtype

      t.timestamps
    end
  end
end
