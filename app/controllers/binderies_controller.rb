class BinderiesController < ApplicationController
  # GET /binderies
  # GET /binderies.json
  def index
    @binderies = Bindery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @binderies }
    end
  end

  # GET /binderies/1
  # GET /binderies/1.json
  def show
    @bindery = Bindery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bindery }
    end
  end

  # GET /binderies/new
  # GET /binderies/new.json
  def new
    @bindery = Bindery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bindery }
    end
  end

  # GET /binderies/1/edit
  def edit
    @bindery = Bindery.find(params[:id])
  end

  # POST /binderies
  # POST /binderies.json
  def create
    @bindery = Bindery.new(params[:bindery])

    respond_to do |format|
      if @bindery.save
        format.html { redirect_to @bindery, notice: 'Bindery was successfully created.' }
        format.json { render json: @bindery, status: :created, location: @bindery }
      else
        format.html { render action: "new" }
        format.json { render json: @bindery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /binderies/1
  # PUT /binderies/1.json
  def update
    @bindery = Bindery.find(params[:id])

    respond_to do |format|
      if @bindery.update_attributes(params[:bindery])
        format.html { redirect_to @bindery, notice: 'Bindery was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bindery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binderies/1
  # DELETE /binderies/1.json
  def destroy
    @bindery = Bindery.find(params[:id])
    @bindery.destroy

    respond_to do |format|
      format.html { redirect_to binderies_url }
      format.json { head :ok }
    end
  end
end
