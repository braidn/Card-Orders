class DietypesController < ApplicationController
  # GET /dietypes
  # GET /dietypes.json
  def index
    @dietypes = Dietype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dietypes }
    end
  end

  # GET /dietypes/1
  # GET /dietypes/1.json
  def show
    @dietype = Dietype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dietype }
    end
  end

  # GET /dietypes/new
  # GET /dietypes/new.json
  def new
    @dietype = Dietype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dietype }
    end
  end

  # GET /dietypes/1/edit
  def edit
    @dietype = Dietype.find(params[:id])
  end

  # POST /dietypes
  # POST /dietypes.json
  def create
    @dietype = Dietype.new(params[:dietype])

    respond_to do |format|
      if @dietype.save
        format.html { redirect_to @dietype, notice: 'Dietype was successfully created.' }
        format.json { render json: @dietype, status: :created, location: @dietype }
      else
        format.html { render action: "new" }
        format.json { render json: @dietype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dietypes/1
  # PUT /dietypes/1.json
  def update
    @dietype = Dietype.find(params[:id])

    respond_to do |format|
      if @dietype.update_attributes(params[:dietype])
        format.html { redirect_to @dietype, notice: 'Dietype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dietype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dietypes/1
  # DELETE /dietypes/1.json
  def destroy
    @dietype = Dietype.find(params[:id])
    @dietype.destroy

    respond_to do |format|
      format.html { redirect_to dietypes_url }
      format.json { head :ok }
    end
  end
end
