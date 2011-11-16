class EncodingstandardsController < ApplicationController
  # GET /encodingstandards
  # GET /encodingstandards.json
  def index
    @encodingstandards = Encodingstandard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @encodingstandards }
    end
  end

  # GET /encodingstandards/1
  # GET /encodingstandards/1.json
  def show
    @encodingstandard = Encodingstandard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @encodingstandard }
    end
  end

  # GET /encodingstandards/new
  # GET /encodingstandards/new.json
  def new
    @encodingstandard = Encodingstandard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @encodingstandard }
    end
  end

  # GET /encodingstandards/1/edit
  def edit
    @encodingstandard = Encodingstandard.find(params[:id])
  end

  # POST /encodingstandards
  # POST /encodingstandards.json
  def create
    @encodingstandard = Encodingstandard.new(params[:encodingstandard])

    respond_to do |format|
      if @encodingstandard.save
        format.html { redirect_to @encodingstandard, notice: 'Encodingstandard was successfully created.' }
        format.json { render json: @encodingstandard, status: :created, location: @encodingstandard }
      else
        format.html { render action: "new" }
        format.json { render json: @encodingstandard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /encodingstandards/1
  # PUT /encodingstandards/1.json
  def update
    @encodingstandard = Encodingstandard.find(params[:id])

    respond_to do |format|
      if @encodingstandard.update_attributes(params[:encodingstandard])
        format.html { redirect_to @encodingstandard, notice: 'Encodingstandard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @encodingstandard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encodingstandards/1
  # DELETE /encodingstandards/1.json
  def destroy
    @encodingstandard = Encodingstandard.find(params[:id])
    @encodingstandard.destroy

    respond_to do |format|
      format.html { redirect_to encodingstandards_url }
      format.json { head :ok }
    end
  end
end
