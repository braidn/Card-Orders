class CoresController < ApplicationController
  # GET /cores
  # GET /cores.json
  def index
    @cores = Core.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cores }
    end
  end

  # GET /cores/1
  # GET /cores/1.json
  def show
    @core = Core.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core }
    end
  end

  # GET /cores/new
  # GET /cores/new.json
  def new
    @core = Core.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core }
    end
  end

  # GET /cores/1/edit
  def edit
    @core = Core.find(params[:id])
  end

  # POST /cores
  # POST /cores.json
  def create
    @core = Core.new(params[:core])

    respond_to do |format|
      if @core.save
        format.html { redirect_to @core, notice: 'Core was successfully created.' }
        format.json { render json: @core, status: :created, location: @core }
      else
        format.html { render action: "new" }
        format.json { render json: @core.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cores/1
  # PUT /cores/1.json
  def update
    @core = Core.find(params[:id])

    respond_to do |format|
      if @core.update_attributes(params[:core])
        format.html { redirect_to @core, notice: 'Core was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @core.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cores/1
  # DELETE /cores/1.json
  def destroy
    @core = Core.find(params[:id])
    @core.destroy

    respond_to do |format|
      format.html { redirect_to cores_url }
      format.json { head :ok }
    end
  end
end
