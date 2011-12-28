class StripeSpecificationsController < ApplicationController
  # GET /stripe_specifications
  # GET /stripe_specifications.json
  def index
    @stripe_specifications = StripeSpecification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stripe_specifications }
    end
  end

  # GET /stripe_specifications/1
  # GET /stripe_specifications/1.json
  def show
    @stripe_specification = StripeSpecification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stripe_specification }
    end
  end

  # GET /stripe_specifications/new
  # GET /stripe_specifications/new.json
  def new
    @stripe_specification = StripeSpecification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stripe_specification }
    end
  end

  # GET /stripe_specifications/1/edit
  def edit
    @stripe_specification = StripeSpecification.find(params[:id])
  end

  # POST /stripe_specifications
  # POST /stripe_specifications.json
  def create
    @stripe_specification = StripeSpecification.new(params[:stripe_specification])

    respond_to do |format|
      if @stripe_specification.save
        format.html { redirect_to @stripe_specification, notice: 'Stripe specification was successfully created.' }
        format.json { render json: @stripe_specification, status: :created, location: @stripe_specification }
      else
        format.html { render action: "new" }
        format.json { render json: @stripe_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stripe_specifications/1
  # PUT /stripe_specifications/1.json
  def update
    @stripe_specification = StripeSpecification.find(params[:id])

    respond_to do |format|
      if @stripe_specification.update_attributes(params[:stripe_specification])
        format.html { redirect_to @stripe_specification, notice: 'Stripe specification was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stripe_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stripe_specifications/1
  # DELETE /stripe_specifications/1.json
  def destroy
    @stripe_specification = StripeSpecification.find(params[:id])
    @stripe_specification.destroy

    respond_to do |format|
      format.html { redirect_to stripe_specifications_url }
      format.json { head :ok }
    end
  end
end
