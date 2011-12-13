class MagInkTypesController < ApplicationController
  # GET /mag_ink_types
  # GET /mag_ink_types.json
  def index
    @mag_ink_types = MagInkType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mag_ink_types }
    end
  end

  # GET /mag_ink_types/1
  # GET /mag_ink_types/1.json
  def show
    @mag_ink_type = MagInkType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mag_ink_type }
    end
  end

  # GET /mag_ink_types/new
  # GET /mag_ink_types/new.json
  def new
    @mag_ink_type = MagInkType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mag_ink_type }
    end
  end

  # GET /mag_ink_types/1/edit
  def edit
    @mag_ink_type = MagInkType.find(params[:id])
  end

  # POST /mag_ink_types
  # POST /mag_ink_types.json
  def create
    @mag_ink_type = MagInkType.new(params[:mag_ink_type])

    respond_to do |format|
      if @mag_ink_type.save
        format.html { redirect_to @mag_ink_type, notice: 'Mag ink type was successfully created.' }
        format.json { render json: @mag_ink_type, status: :created, location: @mag_ink_type }
      else
        format.html { render action: "new" }
        format.json { render json: @mag_ink_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mag_ink_types/1
  # PUT /mag_ink_types/1.json
  def update
    @mag_ink_type = MagInkType.find(params[:id])

    respond_to do |format|
      if @mag_ink_type.update_attributes(params[:mag_ink_type])
        format.html { redirect_to @mag_ink_type, notice: 'Mag ink type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mag_ink_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mag_ink_types/1
  # DELETE /mag_ink_types/1.json
  def destroy
    @mag_ink_type = MagInkType.find(params[:id])
    @mag_ink_type.destroy

    respond_to do |format|
      format.html { redirect_to mag_ink_types_url }
      format.json { head :ok }
    end
  end
end
