class CreateStepRepeats < ActiveRecord::Migration
  def change
    create_table :step_repeats do |t|
      t.string :category
      t.text :description
      t.float :dimensionAcross
      t.float :dimensionAround
      t.float :distortionFactor
      t.float :flexoDistortion
      t.float :flexoLpDist
      t.float :flexoMountingTapeThickness
      t.float :flexoPlateBacking
      t.float :flexoPlateThickness
      t.float :flexoSoftThickness
      t.float :gapAcross
      t.float :gapAround
      t.string :internalName
      t.float :letterpressMountingTapeThickness
      t.float :letterpressPlateBacking
      t.float :letterpressPlateThickness
      t.float :letterpressSoftThickness
      t.float :lpDistortion
      t.string :offset
      t.float :offsetAmount
      t.string :pressType
      t.float :printDiameter
      t.integer :stepAcross
      t.integer :stepAround

      t.timestamps
    end
  end
end
