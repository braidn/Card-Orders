class SalesTermsController < ApplicationController
  # GET /sales_terms
  # GET /sales_terms.json
  def index
    @sales_terms = SalesTerm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sales_terms }
    end
  end

  # GET /sales_terms/1
  # GET /sales_terms/1.json
  def show
    @sales_term = SalesTerm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sales_term }
    end
  end

  # GET /sales_terms/new
  # GET /sales_terms/new.json
  def new
    @sales_term = SalesTerm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_term }
    end
  end

  # GET /sales_terms/1/edit
  def edit
    @sales_term = SalesTerm.find(params[:id])
  end

  # POST /sales_terms
  # POST /sales_terms.json
  def create
    @sales_term = SalesTerm.new(params[:sales_term])

    respond_to do |format|
      if @sales_term.save
        format.html { redirect_to @sales_term, notice: 'Sales Term was successfully created.' }
        format.json { render json: @sales_term, status: :created, location: @sales_term }
      else
        format.html { render action: "new" }
        format.json { render json: @sales_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sales_terms/1
  # PUT /sales_terms/1.json
  def update
    @sales_term = SalesTerm.find(params[:id])

    respond_to do |format|
      if @sales_term.update_attributes(params[:sales_term])
        format.html { redirect_to @sales_term, notice: 'Sales term was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sales_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_terms/1
  # DELETE /sales_terms/1.json
  def destroy
    @sales_term = SalesTerm.find(params[:id])
    @sales_term.destroy

    respond_to do |format|
      format.html { redirect_to sales_terms_url }
      format.json { head :ok }
    end
  end
end
