class CreateSecuritySpecs < ActiveRecord::Migration
  def change
    create_table :security_specs do |t|
      t.string :changsMaterRecombine
      t.integer :coldFoilId
      t.integer :coldFoilWidth
      t.integer :customFoilAmortizeQty
      t.integer :hotComplexTool
      t.integer :hotFoilWidth
      t.integer :hotMediumTool
      t.integer :hotSimpleTool
      t.integer :hotStampFoilId
      t.string :jobNumber
      t.integer :laminationId
      t.integer :laminationWidth
      t.string :securityComment
      t.integer :securitySpecId

      t.timestamps
    end
  end
end
