class ProofCostsController < ApplicationController
  # GET /proof_costs
  # GET /proof_costs.json
  def index
    @proof_costs = ProofCost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proof_costs }
    end
  end

  # GET /proof_costs/1
  # GET /proof_costs/1.json
  def show
    @proof_cost = ProofCost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proof_cost }
    end
  end

  # GET /proof_costs/new
  # GET /proof_costs/new.json
  def new
    @proof_cost = ProofCost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proof_cost }
    end
  end

  # GET /proof_costs/1/edit
  def edit
    @proof_cost = ProofCost.find(params[:id])
  end

  # POST /proof_costs
  # POST /proof_costs.json
  def create
    @proof_cost = ProofCost.new(params[:proof_cost])

    respond_to do |format|
      if @proof_cost.save
        format.html { redirect_to @proof_cost, notice: 'Proof Cost was successfully created.' }
        format.json { render json: @proof_cost, status: :created, location: @proof_cost }
      else
        format.html { render action: "new" }
        format.json { render json: @proof_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proof_costs/1
  # PUT /proof_costs/1.json
  def update
    @proof_cost = ProofCost.find(params[:id])

    respond_to do |format|
      if @proof_cost.update_attributes(params[:proof_cost])
        format.html { redirect_to @proof_cost, notice: 'Proof cost was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @proof_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proof_costs/1
  # DELETE /proof_costs/1.json
  def destroy
    @proof_cost = ProofCost.find(params[:id])
    @proof_cost.destroy

    respond_to do |format|
      format.html { redirect_to proof_costs_url }
      format.json { head :ok }
    end
  end
end
