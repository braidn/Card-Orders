class CreateRfidInlayCategories < ActiveRecord::Migration
  def change
    create_table :rfid_inlay_categories do |t|
      t.string--spec :inlayType

      t.timestamps
    end
  end
end
