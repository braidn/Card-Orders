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
    @adhesife = Adhesive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adhesife }
    end
  end

  # GET /adhesives/new
  # GET /adhesives/new.json
  def new
    @adhesife = Adhesive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adhesife }
    end
  end

  # GET /adhesives/1/edit
  def edit
    @adhesife = Adhesive.find(params[:id])
  end

  # POST /adhesives
  # POST /adhesives.json
  def create
    @adhesife = Adhesive.new(params[:adhesife])

    respond_to do |format|
      if @adhesife.save
        format.html { redirect_to @adhesife, notice: 'Adhesive was successfully created.' }
        format.json { render json: @adhesife, status: :created, location: @adhesife }
      else
        format.html { render action: "new" }
        format.json { render json: @adhesife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adhesives/1
  # PUT /adhesives/1.json
  def update
    @adhesife = Adhesive.find(params[:id])

    respond_to do |format|
      if @adhesife.update_attributes(params[:adhesife])
        format.html { redirect_to @adhesife, notice: 'Adhesive was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @adhesife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adhesives/1
  # DELETE /adhesives/1.json
  def destroy
    @adhesife = Adhesive.find(params[:id])
    @adhesife.destroy

    respond_to do |format|
      format.html { redirect_to adhesives_url }
      format.json { head :ok }
    end
  end
end
