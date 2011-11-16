class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.integer :commrate
      t.integer :profitrate

      t.timestamps
    end
  end
end
