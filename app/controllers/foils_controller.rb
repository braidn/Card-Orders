class FoilsController < ApplicationController
  # GET /foils
  # GET /foils.json
  def index
    @foils = Foil.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foils }
    end
  end

  # GET /foils/1
  # GET /foils/1.json
  def show
    @foil = Foil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foil }
    end
  end

  # GET /foils/new
  # GET /foils/new.json
  def new
    @foil = Foil.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foil }
    end
  end

  # GET /foils/1/edit
  def edit
    @foil = Foil.find(params[:id])
  end

  # POST /foils
  # POST /foils.json
  def create
    @foil = Foil.new(params[:foil])

    respond_to do |format|
      if @foil.save
        format.html { redirect_to @foil, notice: 'Foil was successfully created.' }
        format.json { render json: @foil, status: :created, location: @foil }
      else
        format.html { render action: "new" }
        format.json { render json: @foil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foils/1
  # PUT /foils/1.json
  def update
    @foil = Foil.find(params[:id])

    respond_to do |format|
      if @foil.update_attributes(params[:foil])
        format.html { redirect_to @foil, notice: 'Foil was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @foil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foils/1
  # DELETE /foils/1.json
  def destroy
    @foil = Foil.find(params[:id])
    @foil.destroy

    respond_to do |format|
      format.html { redirect_to foils_url }
      format.json { head :ok }
    end
  end
end
