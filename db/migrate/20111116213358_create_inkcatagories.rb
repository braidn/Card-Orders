class CreateInkcatagories < ActiveRecord::Migration
  def change
    create_table :inkcatagories do |t|
      t.text :description

      t.timestamps
    end
  end
end
