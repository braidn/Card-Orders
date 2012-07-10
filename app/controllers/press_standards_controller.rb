class PressStandardsController < ApplicationController
  # GET /press_standards
  # GET /press_standards.json
  def index
    @press_standards = PressStandard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @press_standards }
    end
  end

  # GET /press_standards/1
  # GET /press_standards/1.json
  def show
    @press_standard = PressStandard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @press_standard }
    end
  end

  # GET /press_standards/new
  # GET /press_standards/new.json
  def new
    @press_standard = PressStandard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @press_standard }
    end
  end

  # GET /press_standards/1/edit
  def edit
    @press_standard = PressStandard.find(params[:id])
  end

  # POST /press_standards
  # POST /press_standards.json
  def create
    @press_standard = PressStandard.new(params[:press_standard])

    respond_to do |format|
      if @press_standard.save
        format.html { redirect_to @press_standard, notice: 'Press Standard was successfully created.' }
        format.json { render json: @press_standard, status: :created, location: @press_standard }
      else
        format.html { render action: "new" }
        format.json { render json: @press_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /press_standards/1
  # PUT /press_standards/1.json
  def update
    @press_standard = PressStandard.find(params[:id])

    respond_to do |format|
      if @press_standard.update_attributes(params[:press_standard])
        format.html { redirect_to @press_standard, notice: 'Press standard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @press_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /press_standards/1
  # DELETE /press_standards/1.json
  def destroy
    @press_standard = PressStandard.find(params[:id])
    @press_standard.destroy

    respond_to do |format|
      format.html { redirect_to press_standards_url }
      format.json { head :ok }
    end
  end
end
