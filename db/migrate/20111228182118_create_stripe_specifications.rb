class CreateStripeSpecifications < ActiveRecord::Migration
  def change
    create_table :stripe_specifications do |t|
      t.integer :designBy
      t.integer :designRevDate
      t.integer :htMagTypeId
      t.string :imageFile
      t.string :jobNumber
      t.string :magneticStripeComment
      t.integer :magneticStripeId
      t.string :sideToStripe
      t.string :signalISO
      t.integer :signalMax
      t.integer :signalMin
      t.string :specNumber
      t.integer :stripeAcross
      t.integer :stripeMachineId
      t.integer :stripePosition
      t.integer :stripePositionMax
      t.integer :stripePositionMin
      t.integer :stripeSpecificationId
      t.integer :stripeSpeed
      t.integer :stripeTypeMin
      t.integer :stripeTypeMax
      t.integer :stripeWidth
      t.integer :stripeWidthMin
      t.integer :stripeWidthMax

      t.timestamps
    end
  end
end
