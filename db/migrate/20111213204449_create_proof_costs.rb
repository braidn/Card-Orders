class CreateProofCosts < ActiveRecord::Migration
  def change
    create_table :proof_costs do |t|
      t.integer :proofCastId
      t.integer :proofCost
      t.string :proofDescription

      t.timestamps
    end
  end
end
