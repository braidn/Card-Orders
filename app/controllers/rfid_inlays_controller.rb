class RfidInlaysController < ApplicationController
  # GET /rfid_inlays
  # GET /rfid_inlays.json
  def index
    @rfid_inlays = RfidInlay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rfid_inlays }
    end
  end

  # GET /rfid_inlays/1
  # GET /rfid_inlays/1.json
  def show
    @rfid_inlay = RfidInlay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rfid_inlay }
    end
  end

  # GET /rfid_inlays/new
  # GET /rfid_inlays/new.json
  def new
    @rfid_inlay = RfidInlay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rfid_inlay }
    end
  end

  # GET /rfid_inlays/1/edit
  def edit
    @rfid_inlay = RfidInlay.find(params[:id])
  end

  # POST /rfid_inlays
  # POST /rfid_inlays.json
  def create
    @rfid_inlay = RfidInlay.new(params[:rfid_inlay])

    respond_to do |format|
      if @rfid_inlay.save
        format.html { redirect_to @rfid_inlay, notice: 'Rfid inlay was successfully created.' }
        format.json { render json: @rfid_inlay, status: :created, location: @rfid_inlay }
      else
        format.html { render action: "new" }
        format.json { render json: @rfid_inlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rfid_inlays/1
  # PUT /rfid_inlays/1.json
  def update
    @rfid_inlay = RfidInlay.find(params[:id])

    respond_to do |format|
      if @rfid_inlay.update_attributes(params[:rfid_inlay])
        format.html { redirect_to @rfid_inlay, notice: 'Rfid inlay was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rfid_inlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfid_inlays/1
  # DELETE /rfid_inlays/1.json
  def destroy
    @rfid_inlay = RfidInlay.find(params[:id])
    @rfid_inlay.destroy

    respond_to do |format|
      format.html { redirect_to rfid_inlays_url }
      format.json { head :ok }
    end
  end
end
