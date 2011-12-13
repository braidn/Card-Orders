class MachineStripeStandardsController < ApplicationController
  # GET /machine_stripe_standards
  # GET /machine_stripe_standards.json
  def index
    @machine_stripe_standards = MachineStripeStandard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @machine_stripe_standards }
    end
  end

  # GET /machine_stripe_standards/1
  # GET /machine_stripe_standards/1.json
  def show
    @machine_stripe_standard = MachineStripeStandard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @machine_stripe_standard }
    end
  end

  # GET /machine_stripe_standards/new
  # GET /machine_stripe_standards/new.json
  def new
    @machine_stripe_standard = MachineStripeStandard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @machine_stripe_standard }
    end
  end

  # GET /machine_stripe_standards/1/edit
  def edit
    @machine_stripe_standard = MachineStripeStandard.find(params[:id])
  end

  # POST /machine_stripe_standards
  # POST /machine_stripe_standards.json
  def create
    @machine_stripe_standard = MachineStripeStandard.new(params[:machine_stripe_standard])

    respond_to do |format|
      if @machine_stripe_standard.save
        format.html { redirect_to @machine_stripe_standard, notice: 'Machine stripe standard was successfully created.' }
        format.json { render json: @machine_stripe_standard, status: :created, location: @machine_stripe_standard }
      else
        format.html { render action: "new" }
        format.json { render json: @machine_stripe_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /machine_stripe_standards/1
  # PUT /machine_stripe_standards/1.json
  def update
    @machine_stripe_standard = MachineStripeStandard.find(params[:id])

    respond_to do |format|
      if @machine_stripe_standard.update_attributes(params[:machine_stripe_standard])
        format.html { redirect_to @machine_stripe_standard, notice: 'Machine stripe standard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @machine_stripe_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_stripe_standards/1
  # DELETE /machine_stripe_standards/1.json
  def destroy
    @machine_stripe_standard = MachineStripeStandard.find(params[:id])
    @machine_stripe_standard.destroy

    respond_to do |format|
      format.html { redirect_to machine_stripe_standards_url }
      format.json { head :ok }
    end
  end
end
