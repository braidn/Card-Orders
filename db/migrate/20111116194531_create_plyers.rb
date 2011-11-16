class CreatePlyers < ActiveRecord::Migration
  def change
    create_table :plyers do |t|

      t.timestamps
    end
  end
end
