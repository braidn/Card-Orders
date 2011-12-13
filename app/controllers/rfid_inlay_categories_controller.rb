class RfidInlayCategoriesController < ApplicationController
  # GET /rfid_inlay_categories
  # GET /rfid_inlay_categories.json
  def index
    @rfid_inlay_categories = RfidInlayCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rfid_inlay_categories }
    end
  end

  # GET /rfid_inlay_categories/1
  # GET /rfid_inlay_categories/1.json
  def show
    @rfid_inlay_category = RfidInlayCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rfid_inlay_category }
    end
  end

  # GET /rfid_inlay_categories/new
  # GET /rfid_inlay_categories/new.json
  def new
    @rfid_inlay_category = RfidInlayCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rfid_inlay_category }
    end
  end

  # GET /rfid_inlay_categories/1/edit
  def edit
    @rfid_inlay_category = RfidInlayCategory.find(params[:id])
  end

  # POST /rfid_inlay_categories
  # POST /rfid_inlay_categories.json
  def create
    @rfid_inlay_category = RfidInlayCategory.new(params[:rfid_inlay_category])

    respond_to do |format|
      if @rfid_inlay_category.save
        format.html { redirect_to @rfid_inlay_category, notice: 'Rfid inlay category was successfully created.' }
        format.json { render json: @rfid_inlay_category, status: :created, location: @rfid_inlay_category }
      else
        format.html { render action: "new" }
        format.json { render json: @rfid_inlay_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rfid_inlay_categories/1
  # PUT /rfid_inlay_categories/1.json
  def update
    @rfid_inlay_category = RfidInlayCategory.find(params[:id])

    respond_to do |format|
      if @rfid_inlay_category.update_attributes(params[:rfid_inlay_category])
        format.html { redirect_to @rfid_inlay_category, notice: 'Rfid inlay category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rfid_inlay_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfid_inlay_categories/1
  # DELETE /rfid_inlay_categories/1.json
  def destroy
    @rfid_inlay_category = RfidInlayCategory.find(params[:id])
    @rfid_inlay_category.destroy

    respond_to do |format|
      format.html { redirect_to rfid_inlay_categories_url }
      format.json { head :ok }
    end
  end
end
