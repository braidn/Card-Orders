class DiesController < ApplicationController
  # GET /dies
  # GET /dies.json
  def index
    @dies = Die.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dies }
    end
  end

  # GET /dies/1
  # GET /dies/1.json
  def show
    @dy = Die.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dy }
    end
  end

  # GET /dies/new
  # GET /dies/new.json
  def new
    @dy = Die.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dy }
    end
  end

  # GET /dies/1/edit
  def edit
    @dy = Die.find(params[:id])
  end

  # POST /dies
  # POST /dies.json
  def create
    @dy = Die.new(params[:dy])

    respond_to do |format|
      if @dy.save
        format.html { redirect_to @dy, notice: 'Die was successfully created.' }
        format.json { render json: @dy, status: :created, location: @dy }
      else
        format.html { render action: "new" }
        format.json { render json: @dy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dies/1
  # PUT /dies/1.json
  def update
    @dy = Die.find(params[:id])

    respond_to do |format|
      if @dy.update_attributes(params[:dy])
        format.html { redirect_to @dy, notice: 'Die was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dies/1
  # DELETE /dies/1.json
  def destroy
    @dy = Die.find(params[:id])
    @dy.destroy

    respond_to do |format|
      format.html { redirect_to dies_url }
      format.json { head :ok }
    end
  end
end
