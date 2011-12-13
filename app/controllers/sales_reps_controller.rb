class SalesRepsController < ApplicationController
  # GET /sales_reps
  # GET /sales_reps.json
  def index
    @sales_reps = SalesRep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sales_reps }
    end
  end

  # GET /sales_reps/1
  # GET /sales_reps/1.json
  def show
    @sales_rep = SalesRep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sales_rep }
    end
  end

  # GET /sales_reps/new
  # GET /sales_reps/new.json
  def new
    @sales_rep = SalesRep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_rep }
    end
  end

  # GET /sales_reps/1/edit
  def edit
    @sales_rep = SalesRep.find(params[:id])
  end

  # POST /sales_reps
  # POST /sales_reps.json
  def create
    @sales_rep = SalesRep.new(params[:sales_rep])

    respond_to do |format|
      if @sales_rep.save
        format.html { redirect_to @sales_rep, notice: 'Sales rep was successfully created.' }
        format.json { render json: @sales_rep, status: :created, location: @sales_rep }
      else
        format.html { render action: "new" }
        format.json { render json: @sales_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sales_reps/1
  # PUT /sales_reps/1.json
  def update
    @sales_rep = SalesRep.find(params[:id])

    respond_to do |format|
      if @sales_rep.update_attributes(params[:sales_rep])
        format.html { redirect_to @sales_rep, notice: 'Sales rep was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sales_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_reps/1
  # DELETE /sales_reps/1.json
  def destroy
    @sales_rep = SalesRep.find(params[:id])
    @sales_rep.destroy

    respond_to do |format|
      format.html { redirect_to sales_reps_url }
      format.json { head :ok }
    end
  end
end
