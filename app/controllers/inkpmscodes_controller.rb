class InkpmscodesController < ApplicationController
  # GET /inkpmscodes
  # GET /inkpmscodes.json
  def index
    @inkpmscodes = Inkpmscode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inkpmscodes }
    end
  end

  # GET /inkpmscodes/1
  # GET /inkpmscodes/1.json
  def show
    @inkpmscode = Inkpmscode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inkpmscode }
    end
  end

  # GET /inkpmscodes/new
  # GET /inkpmscodes/new.json
  def new
    @inkpmscode = Inkpmscode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inkpmscode }
    end
  end

  # GET /inkpmscodes/1/edit
  def edit
    @inkpmscode = Inkpmscode.find(params[:id])
  end

  # POST /inkpmscodes
  # POST /inkpmscodes.json
  def create
    @inkpmscode = Inkpmscode.new(params[:inkpmscode])

    respond_to do |format|
      if @inkpmscode.save
        format.html { redirect_to @inkpmscode, notice: 'Inkpmscode was successfully created.' }
        format.json { render json: @inkpmscode, status: :created, location: @inkpmscode }
      else
        format.html { render action: "new" }
        format.json { render json: @inkpmscode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inkpmscodes/1
  # PUT /inkpmscodes/1.json
  def update
    @inkpmscode = Inkpmscode.find(params[:id])

    respond_to do |format|
      if @inkpmscode.update_attributes(params[:inkpmscode])
        format.html { redirect_to @inkpmscode, notice: 'Inkpmscode was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @inkpmscode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inkpmscodes/1
  # DELETE /inkpmscodes/1.json
  def destroy
    @inkpmscode = Inkpmscode.find(params[:id])
    @inkpmscode.destroy

    respond_to do |format|
      format.html { redirect_to inkpmscodes_url }
      format.json { head :ok }
    end
  end
end
