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
    @die = Die.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @die }
    end
  end

  # GET /dies/new
  # GET /dies/new.json
  def new
    @die = Die.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @die }
    end
  end

  # GET /dies/1/edit
  def edit
    @die = Die.find(params[:id])
  end

  # POST /dies
  # POST /dies.json
  def create
    @die = Die.new(params[:die])

    respond_to do |format|
      if @die.save
        format.html { redirect_to @die, notice: 'Die was successfully created.' }
        format.json { render json: @die, status: :created, location: @die }
      else
        format.html { render action: "new" }
        format.json { render json: @die.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dies/1
  # PUT /dies/1.json
  def update
    @die = Die.find(params[:id])

    respond_to do |format|
      if @die.update_attributes(params[:die])
        format.html { redirect_to @die, notice: 'Die was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @die.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dies/1
  # DELETE /dies/1.json
  def destroy
    @die = Die.find(params[:id])
    @die.destroy

    respond_to do |format|
      format.html { redirect_to dies_url }
      format.json { head :ok }
    end
  end
end
