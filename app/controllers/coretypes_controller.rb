class CoretypesController < ApplicationController
  # GET /coretypes
  # GET /coretypes.json
  def index
    @coretypes = Coretype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coretypes }
    end
  end

  # GET /coretypes/1
  # GET /coretypes/1.json
  def show
    @coretype = Coretype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coretype }
    end
  end

  # GET /coretypes/new
  # GET /coretypes/new.json
  def new
    @coretype = Coretype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coretype }
    end
  end

  # GET /coretypes/1/edit
  def edit
    @coretype = Coretype.find(params[:id])
  end

  # POST /coretypes
  # POST /coretypes.json
  def create
    @coretype = Coretype.new(params[:coretype])

    respond_to do |format|
      if @coretype.save
        format.html { redirect_to @coretype, notice: 'Coretype was successfully created.' }
        format.json { render json: @coretype, status: :created, location: @coretype }
      else
        format.html { render action: "new" }
        format.json { render json: @coretype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coretypes/1
  # PUT /coretypes/1.json
  def update
    @coretype = Coretype.find(params[:id])

    respond_to do |format|
      if @coretype.update_attributes(params[:coretype])
        format.html { redirect_to @coretype, notice: 'Coretype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @coretype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coretypes/1
  # DELETE /coretypes/1.json
  def destroy
    @coretype = Coretype.find(params[:id])
    @coretype.destroy

    respond_to do |format|
      format.html { redirect_to coretypes_url }
      format.json { head :ok }
    end
  end
end
