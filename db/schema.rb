# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111228185604) do

  create_table "adhesives", :force => true do |t|
    t.string   "adhesivedescription"
    t.integer  "costperlb"
    t.integer  "msiperlb"
    t.string   "partnumber"
    t.string   "primaryuse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billings", :force => true do |t|
    t.string   "addressType"
    t.string   "city"
    t.string   "country"
    t.integer  "customerId"
    t.string   "postalCode"
    t.string   "state"
    t.string   "street1"
    t.string   "street1a"
    t.string   "street2"
    t.string   "street2a"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "binderies", :force => true do |t|
    t.string   "opdescription"
    t.string   "unit"
    t.integer  "unitcost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "binderyspecs", :force => true do |t|
    t.integer  "cardsperunit"
    t.text     "comment"
    t.integer  "numberofpersons"
    t.integer  "quantityperhour"
    t.integer  "unitmaterialcost"
    t.string   "jobnumber"
    t.string   "newboxrequired"
    t.integer  "packageamoritizequantity"
    t.text     "packagecomment"
    t.string   "packageinnerboxid"
    t.string   "packageouterboxid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boxes", :force => true do |t|
    t.string   "boxtype"
    t.integer  "boxesperskid"
    t.string   "caliper"
    t.integer  "cardsperskid"
    t.string   "concatview"
    t.integer  "estimateboxselection"
    t.integer  "height"
    t.integer  "innercost"
    t.string   "innerouter"
    t.integer  "innerquantity"
    t.text     "internaldescription"
    t.integer  "length"
    t.string   "maincustomer"
    t.integer  "outercost"
    t.integer  "outerquantity"
    t.integer  "rowshigh"
    t.string   "selectskid"
    t.string   "size"
    t.integer  "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boxtypes", :force => true do |t|
    t.integer  "boxid"
    t.string   "boxtype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commissions", :force => true do |t|
    t.integer  "commrate"
    t.integer  "profitrate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "commissioned"
    t.string   "name"
    t.string   "country"
    t.string   "market"
    t.string   "phone"
    t.string   "salesrep"
    t.string   "state"
    t.string   "url"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "company"
    t.string   "email"
    t.string   "fax"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "cell"
    t.string   "mainPhone"
    t.string   "state"
    t.string   "url"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cores", :force => true do |t|
    t.string   "generalName"
    t.integer  "cost"
    t.integer  "innerDiameter"
    t.integer  "outerDiameter"
    t.integer  "type"
    t.integer  "wallThickness"
    t.integer  "width"
    t.string   "internalName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coretypes", :force => true do |t|
    t.string   "matDescription"
    t.string   "material"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_notes", :force => true do |t|
    t.integer  "company"
    t.text     "noteInfo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.integer  "traverseAcct"
    t.string   "addType"
    t.string   "city1"
    t.string   "city2"
    t.string   "commision"
    t.string   "company"
    t.string   "country"
    t.string   "status"
    t.string   "type"
    t.string   "po"
    t.string   "distributor"
    t.string   "invoiceInst"
    t.string   "market"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "postalCode"
    t.string   "stateProvince"
    t.string   "street1"
    t.string   "street1a"
    t.string   "street2"
    t.string   "street2a"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dies", :force => true do |t|
    t.string   "dieCatagory"
    t.integer  "costpercard"
    t.integer  "costspertooth"
    t.text     "description"
    t.integer  "initialCost"
    t.integer  "initialLife"
    t.integer  "retoolCost"
    t.integer  "retoolLife"
    t.integer  "retoolTimes"
    t.integer  "totalCards"
    t.integer  "totalCost"
    t.string   "type"
    t.string   "vendorIDNumb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dietypes", :force => true do |t|
    t.text     "dieDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encodingstandards", :force => true do |t|
    t.text     "mchDescription"
    t.integer  "bagging"
    t.integer  "barcode"
    t.integer  "hico"
    t.integer  "inchespersecond"
    t.integer  "labor"
    t.string   "machineName"
    t.string   "multiplepass"
    t.integer  "overhead"
    t.integer  "runwaste"
    t.integer  "variabledata"
    t.integer  "secondsperhour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foils", :force => true do |t|
    t.text     "description"
    t.integer  "length"
    t.integer  "msi"
    t.string   "type"
    t.integer  "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foiltypes", :force => true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ink_varnishes", :force => true do |t|
    t.integer  "inkCostPerPound"
    t.integer  "inkMsiPerPound"
    t.string   "vendor"
    t.string   "vendorPartNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inkcatagories", :force => true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inkpmscodes", :force => true do |t|
    t.string   "vendorpartnumb"
    t.string   "vendor"
    t.string   "magtype"
    t.integer  "inktype"
    t.integer  "inkmsiperpound"
    t.integer  "inkcostperpound"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inksignatures", :force => true do |t|
    t.string   "vendorpartnumber"
    t.string   "vendor"
    t.string   "magtype"
    t.integer  "inktype"
    t.integer  "inkmsiperpound"
    t.integer  "inkcostperpound"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "laminates", :force => true do |t|
    t.string   "lamAdhesive"
    t.text     "lamDescription"
    t.integer  "lamLength"
    t.integer  "lamMsi"
    t.string   "lamType"
    t.integer  "lamWidth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_id_standards", :force => true do |t|
    t.integer  "dieMaterial"
    t.integer  "dieSpeed"
    t.integer  "dieTime"
    t.integer  "dieWaste"
    t.integer  "folderMaterial"
    t.integer  "folderSpeed"
    t.integer  "folderTime"
    t.integer  "folderWaste"
    t.integer  "insertionMaterial"
    t.integer  "insertionSpeed"
    t.integer  "insertionTime"
    t.string   "machineName"
    t.integer  "machineId"
    t.integer  "machineLabor"
    t.integer  "machineOverhead"
    t.integer  "machinePitch"
    t.integer  "machineSpeed"
    t.string   "machineType"
    t.integer  "machineWidth"
    t.integer  "numMat"
    t.integer  "numSpeed"
    t.integer  "numbTime"
    t.integer  "numWaste"
    t.integer  "rollChangeMat"
    t.integer  "rollChangeTime"
    t.integer  "rollChangeWaste"
    t.integer  "slitMat"
    t.integer  "slitSpeed"
    t.integer  "slitTime"
    t.integer  "slitWaste"
    t.integer  "trim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_stripe_standards", :force => true do |t|
    t.integer  "ampMaterial"
    t.integer  "ampTime"
    t.integer  "headMaterial"
    t.integer  "headTime"
    t.integer  "inkMat"
    t.integer  "inkTime"
    t.string   "machineName"
    t.integer  "machineId"
    t.integer  "machineLabor"
    t.integer  "machineOverhead"
    t.integer  "machineSpeed"
    t.string   "machineType"
    t.integer  "machineWidth"
    t.integer  "rollChangeMat"
    t.integer  "rollChangeTime"
    t.integer  "slitMat"
    t.integer  "slitSpeed"
    t.integer  "slitTime"
    t.integer  "slitWaste"
    t.integer  "trim"
    t.integer  "turretMat"
    t.integer  "turretSpeed"
    t.integer  "turretTime"
    t.integer  "turretWaste"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mag_ink_types", :force => true do |t|
    t.integer  "gallonCost"
    t.string   "inkType"
    t.integer  "inkTypeId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mag_tapes", :force => true do |t|
    t.integer  "costPerMsi"
    t.integer  "costPerRoll"
    t.integer  "typeCate"
    t.string   "tapeDescription"
    t.integer  "tapeId"
    t.integer  "tapeLength"
    t.string   "tapeType"
    t.integer  "tapeWidth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mat_categories", :force => true do |t|
    t.string   "matCatDescription"
    t.string   "matCategory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.integer  "materialCatId"
    t.integer  "blueFeetPerMinute"
    t.integer  "blueLength"
    t.integer  "coredOd"
    t.integer  "eganFeetPerMinute"
    t.integer  "eganLength"
    t.string   "materialDescription"
    t.integer  "materialMsiCost"
    t.string   "materialPreStripe"
    t.integer  "materialRollLengthMaster"
    t.integer  "materialRollWidth"
    t.integer  "materialThickness"
    t.string   "vendor"
    t.string   "vendorPartNum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plate_costs", :force => true do |t|
    t.integer  "digital"
    t.integer  "filmcost"
    t.integer  "filmSquareInch"
    t.integer  "laborCost"
    t.integer  "machineName"
    t.string   "processTime"
    t.integer  "sheetCost"
    t.integer  "sheetsPerCycle"
    t.integer  "squareInchPerSheet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "press_standards", :force => true do |t|
    t.integer  "ampMaterial"
    t.integer  "ampTime"
    t.integer  "colorMaterial"
    t.integer  "colorTime"
    t.integer  "colorWaste"
    t.integer  "dieMaterial"
    t.integer  "dieSpeed"
    t.integer  "dieTime"
    t.integer  "dieWaste"
    t.integer  "folderMaterial"
    t.integer  "folderSpeed"
    t.integer  "folderTime"
    t.integer  "folderWaste"
    t.integer  "headMaterial"
    t.integer  "headTime"
    t.integer  "hotStampMaterial"
    t.integer  "hotStampSpeed"
    t.integer  "hotStampTime"
    t.integer  "hotStampWaste"
    t.string   "inkType"
    t.string   "inkTypeSig"
    t.string   "inkTypeVarnish"
    t.integer  "inkMaterial"
    t.integer  "inkTime"
    t.integer  "inlineMaterial"
    t.integer  "inlineSpeed"
    t.integer  "inlineTime"
    t.integer  "inlineWaste"
    t.integer  "insertionMaterial"
    t.integer  "insertionSpeed"
    t.integer  "insertionTime"
    t.integer  "laminationMaterial"
    t.integer  "laminationSpeed"
    t.integer  "laminationTime"
    t.integer  "laminationWaste"
    t.string   "machineName"
    t.integer  "machineID"
    t.integer  "machineLabor"
    t.integer  "machineOverhead"
    t.integer  "machinePitch"
    t.integer  "machineSpeed"
    t.string   "machineType"
    t.integer  "machineWidth"
    t.integer  "numberMaterial"
    t.integer  "numberSpeed"
    t.integer  "numberTime"
    t.integer  "numberWaste"
    t.integer  "plateChangeWaste"
    t.integer  "plateChangeMaterial"
    t.integer  "plateChangeTime"
    t.integer  "pressSetupMaterial"
    t.integer  "pressSetupTime"
    t.integer  "printStations"
    t.integer  "rollChangeMaterial"
    t.integer  "rollChangeTime"
    t.integer  "rollChangeWaste"
    t.integer  "slitMaterial"
    t.integer  "slitSpeed"
    t.integer  "slitTime"
    t.integer  "slitWaste"
    t.integer  "trim"
    t.integer  "turretMaterial"
    t.integer  "turretSpeed"
    t.integer  "turretTime"
    t.integer  "turretWaste"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_formats", :force => true do |t|
    t.text     "description"
    t.string   "formatId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proof_costs", :force => true do |t|
    t.integer  "proofCastId"
    t.integer  "proofCost"
    t.string   "proofDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registration_levels", :force => true do |t|
    t.text     "registrationDescription"
    t.integer  "registrationLevelId"
    t.integer  "registrationSpeed"
    t.integer  "registrationWaste"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rfid_inlay_categories", :force => true do |t|
    t.string   "inlayType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rfid_inlays", :force => true do |t|
    t.integer  "break1"
    t.integer  "break1Price"
    t.integer  "break2"
    t.integer  "break2Price"
    t.integer  "break3"
    t.integer  "break3Price"
    t.integer  "break4"
    t.integer  "break4Price"
    t.integer  "break5"
    t.integer  "break5Price"
    t.string   "inlayDescription"
    t.integer  "inlayId"
    t.integer  "inlayTypeId"
    t.integer  "price"
    t.string   "vendor"
    t.string   "vendorPartNumb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_reps", :force => true do |t|
    t.integer  "orderId"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_terms", :force => true do |t|
    t.string   "discountDays"
    t.integer  "discountRate"
    t.string   "payDays"
    t.string   "salesTermDescription"
    t.integer  "salesTermId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "security_specs", :force => true do |t|
    t.string   "changsMaterRecombine"
    t.integer  "coldFoilId"
    t.integer  "coldFoilWidth"
    t.integer  "customFoilAmortizeQty"
    t.integer  "hotComplexTool"
    t.integer  "hotFoilWidth"
    t.integer  "hotMediumTool"
    t.integer  "hotSimpleTool"
    t.integer  "hotStampFoilId"
    t.string   "jobNumber"
    t.integer  "laminationId"
    t.integer  "laminationWidth"
    t.string   "securityComment"
    t.integer  "securitySpecId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippings", :force => true do |t|
    t.string   "additionalInfo"
    t.string   "attention"
    t.string   "city"
    t.string   "country"
    t.string   "customerId"
    t.string   "freightCollect3rdAddr1"
    t.string   "freightCollect3rdAddr2"
    t.string   "freightCollect3rdCity"
    t.string   "freightCollect3rdComment"
    t.string   "freightCollect3rdName"
    t.string   "freightCollect3rdState"
    t.string   "freightCollect3rdZip"
    t.string   "freightShippingInst"
    t.string   "instructions"
    t.string   "name"
    t.string   "phone"
    t.string   "postalCode"
    t.string   "state"
    t.string   "street1"
    t.string   "street1a"
    t.string   "street2"
    t.string   "street2a"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skids", :force => true do |t|
    t.integer  "quantityPerSkid"
    t.integer  "skidCost"
    t.string   "skidDescription"
    t.string   "skidEntryPoints"
    t.integer  "skidHeight"
    t.integer  "skidId"
    t.integer  "skidLength"
    t.string   "skidMat"
    t.integer  "skidWidth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "step_repeats", :force => true do |t|
    t.string   "category"
    t.text     "description"
    t.float    "dimensionAcross"
    t.float    "dimensionAround"
    t.float    "distortionFactor"
    t.float    "flexoDistortion"
    t.float    "flexoLpDist"
    t.float    "flexoMountingTapeThickness"
    t.float    "flexoPlateBacking"
    t.float    "flexoPlateThickness"
    t.float    "flexoSoftThickness"
    t.float    "gapAcross"
    t.float    "gapAround"
    t.string   "internalName"
    t.float    "letterpressMountingTapeThickness"
    t.float    "letterpressPlateBacking"
    t.float    "letterpressPlateThickness"
    t.float    "letterpressSoftThickness"
    t.float    "lpDistortion"
    t.string   "offset"
    t.float    "offsetAmount"
    t.string   "pressType"
    t.float    "printDiameter"
    t.integer  "stepAcross"
    t.integer  "stepAround"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stripe_specifications", :force => true do |t|
    t.integer  "designBy"
    t.integer  "designRevDate"
    t.integer  "htMagTypeId"
    t.string   "imageFile"
    t.string   "jobNumber"
    t.string   "magneticStripeComment"
    t.integer  "magneticStripeId"
    t.string   "sideToStripe"
    t.string   "signalISO"
    t.integer  "signalMax"
    t.integer  "signalMin"
    t.string   "specNumber"
    t.integer  "stripeAcross"
    t.integer  "stripeMachineId"
    t.integer  "stripePosition"
    t.integer  "stripePositionMax"
    t.integer  "stripePositionMin"
    t.integer  "stripeSpecificationId"
    t.integer  "stripeSpeed"
    t.integer  "stripeTypeMin"
    t.integer  "stripeTypeMax"
    t.integer  "stripeWidth"
    t.integer  "stripeWidthMin"
    t.integer  "stripeWidthMax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tooling_specifications", :force => true do |t|
    t.integer  "addAmortizeQuantity"
    t.integer  "addToolingCost"
    t.string   "designBy"
    t.datetime "designRevDate"
    t.integer  "dieAround"
    t.integer  "dieId"
    t.string   "dieSc"
    t.string   "imageFile"
    t.integer  "jobNumber"
    t.string   "newDieRequired"
    t.text     "toolingComment"
    t.string   "toolSc"
    t.string   "toolSpecificationId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
