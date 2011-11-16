class BoxtypesController < ApplicationController
  # GET /boxtypes
  # GET /boxtypes.json
  def index
    @boxtypes = Boxtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boxtypes }
    end
  end

  # GET /boxtypes/1
  # GET /boxtypes/1.json
  def show
    @boxtype = Boxtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boxtype }
    end
  end

  # GET /boxtypes/new
  # GET /boxtypes/new.json
  def new
    @boxtype = Boxtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boxtype }
    end
  end

  # GET /boxtypes/1/edit
  def edit
    @boxtype = Boxtype.find(params[:id])
  end

  # POST /boxtypes
  # POST /boxtypes.json
  def create
    @boxtype = Boxtype.new(params[:boxtype])

    respond_to do |format|
      if @boxtype.save
        format.html { redirect_to @boxtype, notice: 'Boxtype was successfully created.' }
        format.json { render json: @boxtype, status: :created, location: @boxtype }
      else
        format.html { render action: "new" }
        format.json { render json: @boxtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boxtypes/1
  # PUT /boxtypes/1.json
  def update
    @boxtype = Boxtype.find(params[:id])

    respond_to do |format|
      if @boxtype.update_attributes(params[:boxtype])
        format.html { redirect_to @boxtype, notice: 'Boxtype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @boxtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boxtypes/1
  # DELETE /boxtypes/1.json
  def destroy
    @boxtype = Boxtype.find(params[:id])
    @boxtype.destroy

    respond_to do |format|
      format.html { redirect_to boxtypes_url }
      format.json { head :ok }
    end
  end
end
