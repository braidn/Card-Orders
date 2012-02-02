class AdhesivesController < ApplicationController
  # GET /adhesives
  # GET /adhesives.json
  def index
    @adhesives = Adhesive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adhesives }
    end
  end

  # GET /adhesives/1
  # GET /adhesives/1.json
  def show
    @adhesive = Adhesive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adesive }
    end
  end

  # GET /adhesives/new
  # GET /adhesives/new.json
  def new
    @adhesive = Adhesive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adhesive }
    end
  end

  # GET /adhesives/1/edit
  def edit
    @adhesive = Adhesive.find(params[:id])
  end

  # POST /adhesives
  # POST /adhesives.json
  def create
    @adhesive = Adhesive.new(params[:adhesive])

    respond_to do |format|
      if @adhesive.save
        format.html { redirect_to @adhesive, notice: 'Adhesive was successfully created.' }
        format.json { render json: @adhesive, status: :created, location: @adhesive }
      else
        format.html { render action: "new" }
        format.json { render json: @adhesive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adhesives/1
  # PUT /adhesives/1.json
  def update
    @adhesive = Adhesive.find(params[:id])

    respond_to do |format|
      if @adhesive.update_attributes(params[:adhesive])
        format.html { redirect_to @adhesive, notice: 'Adhesive was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @adhesive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adhesives/1
  # DELETE /adhesives/1.json
  def destroy
    @adhesive = Adhesive.find(params[:id])
    @adhesive.destroy

    respond_to do |format|
      format.html { redirect_to adhesives_url }
      format.json { head :ok }
    end
  end
end
