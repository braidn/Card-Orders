class InksignaturesController < ApplicationController
  # GET /inksignatures
  # GET /inksignatures.json
  def index
    @inksignatures = Inksignature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inksignatures }
    end
  end

  # GET /inksignatures/1
  # GET /inksignatures/1.json
  def show
    @inksignature = Inksignature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inksignature }
    end
  end

  # GET /inksignatures/new
  # GET /inksignatures/new.json
  def new
    @inksignature = Inksignature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inksignature }
    end
  end

  # GET /inksignatures/1/edit
  def edit
    @inksignature = Inksignature.find(params[:id])
  end

  # POST /inksignatures
  # POST /inksignatures.json
  def create
    @inksignature = Inksignature.new(params[:inksignature])

    respond_to do |format|
      if @inksignature.save
        format.html { redirect_to @inksignature, notice: 'Ink Signature was successfully created.' }
        format.json { render json: @inksignature, status: :created, location: @inksignature }
      else
        format.html { render action: "new" }
        format.json { render json: @inksignature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inksignatures/1
  # PUT /inksignatures/1.json
  def update
    @inksignature = Inksignature.find(params[:id])

    respond_to do |format|
      if @inksignature.update_attributes(params[:inksignature])
        format.html { redirect_to @inksignature, notice: 'Inksignature was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @inksignature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inksignatures/1
  # DELETE /inksignatures/1.json
  def destroy
    @inksignature = Inksignature.find(params[:id])
    @inksignature.destroy

    respond_to do |format|
      format.html { redirect_to inksignatures_url }
      format.json { head :ok }
    end
  end
end
