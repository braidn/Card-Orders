class CreateProductFormats < ActiveRecord::Migration
  def change
    create_table :product_formats do |t|
      t.text :description
      t.string :formatId

      t.timestamps
    end
  end
end
