class FoiltypesController < ApplicationController
  # GET /foiltypes
  # GET /foiltypes.json
  def index
    @foiltypes = Foiltype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foiltypes }
    end
  end

  # GET /foiltypes/1
  # GET /foiltypes/1.json
  def show
    @foiltype = Foiltype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foiltype }
    end
  end

  # GET /foiltypes/new
  # GET /foiltypes/new.json
  def new
    @foiltype = Foiltype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foiltype }
    end
  end

  # GET /foiltypes/1/edit
  def edit
    @foiltype = Foiltype.find(params[:id])
  end

  # POST /foiltypes
  # POST /foiltypes.json
  def create
    @foiltype = Foiltype.new(params[:foiltype])

    respond_to do |format|
      if @foiltype.save
        format.html { redirect_to @foiltype, notice: 'Foil Type was successfully created.' }
        format.json { render json: @foiltype, status: :created, location: @foiltype }
      else
        format.html { render action: "new" }
        format.json { render json: @foiltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foiltypes/1
  # PUT /foiltypes/1.json
  def update
    @foiltype = Foiltype.find(params[:id])

    respond_to do |format|
      if @foiltype.update_attributes(params[:foiltype])
        format.html { redirect_to @foiltype, notice: 'Foiltype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @foiltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foiltypes/1
  # DELETE /foiltypes/1.json
  def destroy
    @foiltype = Foiltype.find(params[:id])
    @foiltype.destroy

    respond_to do |format|
      format.html { redirect_to foiltypes_url }
      format.json { head :ok }
    end
  end
end
