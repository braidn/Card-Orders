class PlateCostsController < ApplicationController
  # GET /plate_costs
  # GET /plate_costs.json
  def index
    @plate_costs = PlateCost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plate_costs }
    end
  end

  # GET /plate_costs/1
  # GET /plate_costs/1.json
  def show
    @plate_cost = PlateCost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plate_cost }
    end
  end

  # GET /plate_costs/new
  # GET /plate_costs/new.json
  def new
    @plate_cost = PlateCost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plate_cost }
    end
  end

  # GET /plate_costs/1/edit
  def edit
    @plate_cost = PlateCost.find(params[:id])
  end

  # POST /plate_costs
  # POST /plate_costs.json
  def create
    @plate_cost = PlateCost.new(params[:plate_cost])

    respond_to do |format|
      if @plate_cost.save
        format.html { redirect_to @plate_cost, notice: 'Plate Cost was successfully created.' }
        format.json { render json: @plate_cost, status: :created, location: @plate_cost }
      else
        format.html { render action: "new" }
        format.json { render json: @plate_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plate_costs/1
  # PUT /plate_costs/1.json
  def update
    @plate_cost = PlateCost.find(params[:id])

    respond_to do |format|
      if @plate_cost.update_attributes(params[:plate_cost])
        format.html { redirect_to @plate_cost, notice: 'Plate Cost was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @plate_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plate_costs/1
  # DELETE /plate_costs/1.json
  def destroy
    @plate_cost = PlateCost.find(params[:id])
    @plate_cost.destroy

    respond_to do |format|
      format.html { redirect_to plate_costs_url }
      format.json { head :ok }
    end
  end
end
