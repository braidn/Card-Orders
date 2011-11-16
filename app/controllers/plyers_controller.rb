class PlyersController < ApplicationController
  # GET /plyers
  # GET /plyers.json
  def index
    @plyers = Plyer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plyers }
    end
  end

  # GET /plyers/1
  # GET /plyers/1.json
  def show
    @plyer = Plyer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plyer }
    end
  end

  # GET /plyers/new
  # GET /plyers/new.json
  def new
    @plyer = Plyer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plyer }
    end
  end

  # GET /plyers/1/edit
  def edit
    @plyer = Plyer.find(params[:id])
  end

  # POST /plyers
  # POST /plyers.json
  def create
    @plyer = Plyer.new(params[:plyer])

    respond_to do |format|
      if @plyer.save
        format.html { redirect_to @plyer, notice: 'Plyer was successfully created.' }
        format.json { render json: @plyer, status: :created, location: @plyer }
      else
        format.html { render action: "new" }
        format.json { render json: @plyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plyers/1
  # PUT /plyers/1.json
  def update
    @plyer = Plyer.find(params[:id])

    respond_to do |format|
      if @plyer.update_attributes(params[:plyer])
        format.html { redirect_to @plyer, notice: 'Plyer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @plyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plyers/1
  # DELETE /plyers/1.json
  def destroy
    @plyer = Plyer.find(params[:id])
    @plyer.destroy

    respond_to do |format|
      format.html { redirect_to plyers_url }
      format.json { head :ok }
    end
  end
end
