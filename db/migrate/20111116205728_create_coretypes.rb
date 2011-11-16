class CreateCoretypes < ActiveRecord::Migration
  def change
    create_table :coretypes do |t|
      t.string :matDescription
      t.string :material

      t.timestamps
    end
  end
end
