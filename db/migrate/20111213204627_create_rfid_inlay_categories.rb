class CreateRfidInlayCategories < ActiveRecord::Migration
  def change
    create_table :rfid_inlay_categories do |t|
      t.string :inlayType

      t.timestamps
    end
  end
end
