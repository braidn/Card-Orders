class CreateMatCategories < ActiveRecord::Migration
  def change
    create_table :mat_categories do |t|
      t.string :matCatDescription
      t.string :matCategory

      t.timestamps
    end
  end
end
