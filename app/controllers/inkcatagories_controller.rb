class InkcatagoriesController < ApplicationController
  # GET /inkcatagories
  # GET /inkcatagories.json
  def index
    @inkcatagories = Inkcatagory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inkcatagories }
    end
  end

  # GET /inkcatagories/1
  # GET /inkcatagories/1.json
  def show
    @inkcatagory = Inkcatagory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inkcatagory }
    end
  end

  # GET /inkcatagories/new
  # GET /inkcatagories/new.json
  def new
    @inkcatagory = Inkcatagory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inkcatagory }
    end
  end

  # GET /inkcatagories/1/edit
  def edit
    @inkcatagory = Inkcatagory.find(params[:id])
  end

  # POST /inkcatagories
  # POST /inkcatagories.json
  def create
    @inkcatagory = Inkcatagory.new(params[:inkcatagory])

    respond_to do |format|
      if @inkcatagory.save
        format.html { redirect_to @inkcatagory, notice: 'Inkcatagory was successfully created.' }
        format.json { render json: @inkcatagory, status: :created, location: @inkcatagory }
      else
        format.html { render action: "new" }
        format.json { render json: @inkcatagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inkcatagories/1
  # PUT /inkcatagories/1.json
  def update
    @inkcatagory = Inkcatagory.find(params[:id])

    respond_to do |format|
      if @inkcatagory.update_attributes(params[:inkcatagory])
        format.html { redirect_to @inkcatagory, notice: 'Inkcatagory was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @inkcatagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inkcatagories/1
  # DELETE /inkcatagories/1.json
  def destroy
    @inkcatagory = Inkcatagory.find(params[:id])
    @inkcatagory.destroy

    respond_to do |format|
      format.html { redirect_to inkcatagories_url }
      format.json { head :ok }
    end
  end
end
