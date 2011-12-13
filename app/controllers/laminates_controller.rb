class LaminatesController < ApplicationController
  # GET /laminates
  # GET /laminates.json
  def index
    @laminates = Laminate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @laminates }
    end
  end

  # GET /laminates/1
  # GET /laminates/1.json
  def show
    @laminate = Laminate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @laminate }
    end
  end

  # GET /laminates/new
  # GET /laminates/new.json
  def new
    @laminate = Laminate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @laminate }
    end
  end

  # GET /laminates/1/edit
  def edit
    @laminate = Laminate.find(params[:id])
  end

  # POST /laminates
  # POST /laminates.json
  def create
    @laminate = Laminate.new(params[:laminate])

    respond_to do |format|
      if @laminate.save
        format.html { redirect_to @laminate, notice: 'Laminate was successfully created.' }
        format.json { render json: @laminate, status: :created, location: @laminate }
      else
        format.html { render action: "new" }
        format.json { render json: @laminate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /laminates/1
  # PUT /laminates/1.json
  def update
    @laminate = Laminate.find(params[:id])

    respond_to do |format|
      if @laminate.update_attributes(params[:laminate])
        format.html { redirect_to @laminate, notice: 'Laminate was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @laminate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laminates/1
  # DELETE /laminates/1.json
  def destroy
    @laminate = Laminate.find(params[:id])
    @laminate.destroy

    respond_to do |format|
      format.html { redirect_to laminates_url }
      format.json { head :ok }
    end
  end
end
