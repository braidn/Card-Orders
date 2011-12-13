class MachineIdStandardsController < ApplicationController
  # GET /machine_id_standards
  # GET /machine_id_standards.json
  def index
    @machine_id_standards = MachineIdStandard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @machine_id_standards }
    end
  end

  # GET /machine_id_standards/1
  # GET /machine_id_standards/1.json
  def show
    @machine_id_standard = MachineIdStandard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @machine_id_standard }
    end
  end

  # GET /machine_id_standards/new
  # GET /machine_id_standards/new.json
  def new
    @machine_id_standard = MachineIdStandard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @machine_id_standard }
    end
  end

  # GET /machine_id_standards/1/edit
  def edit
    @machine_id_standard = MachineIdStandard.find(params[:id])
  end

  # POST /machine_id_standards
  # POST /machine_id_standards.json
  def create
    @machine_id_standard = MachineIdStandard.new(params[:machine_id_standard])

    respond_to do |format|
      if @machine_id_standard.save
        format.html { redirect_to @machine_id_standard, notice: 'Machine id standard was successfully created.' }
        format.json { render json: @machine_id_standard, status: :created, location: @machine_id_standard }
      else
        format.html { render action: "new" }
        format.json { render json: @machine_id_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /machine_id_standards/1
  # PUT /machine_id_standards/1.json
  def update
    @machine_id_standard = MachineIdStandard.find(params[:id])

    respond_to do |format|
      if @machine_id_standard.update_attributes(params[:machine_id_standard])
        format.html { redirect_to @machine_id_standard, notice: 'Machine id standard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @machine_id_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_id_standards/1
  # DELETE /machine_id_standards/1.json
  def destroy
    @machine_id_standard = MachineIdStandard.find(params[:id])
    @machine_id_standard.destroy

    respond_to do |format|
      format.html { redirect_to machine_id_standards_url }
      format.json { head :ok }
    end
  end
end
