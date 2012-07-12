class RegistrationLevelsController < ApplicationController
  # GET /registration_levels
  # GET /registration_levels.json
  def index
    @registration_levels = RegistrationLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registration_levels }
    end
  end

  # GET /registration_levels/1
  # GET /registration_levels/1.json
  def show
    @registration_level = RegistrationLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registration_level }
    end
  end

  # GET /registration_levels/new
  # GET /registration_levels/new.json
  def new
    @registration_level = RegistrationLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registration_level }
    end
  end

  # GET /registration_levels/1/edit
  def edit
    @registration_level = RegistrationLevel.find(params[:id])
  end

  # POST /registration_levels
  # POST /registration_levels.json
  def create
    @registration_level = RegistrationLevel.new(params[:registration_level])

    respond_to do |format|
      if @registration_level.save
        format.html { redirect_to @registration_level, notice: 'Registration Level was successfully created.' }
        format.json { render json: @registration_level, status: :created, location: @registration_level }
      else
        format.html { render action: "new" }
        format.json { render json: @registration_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /registration_levels/1
  # PUT /registration_levels/1.json
  def update
    @registration_level = RegistrationLevel.find(params[:id])

    respond_to do |format|
      if @registration_level.update_attributes(params[:registration_level])
        format.html { redirect_to @registration_level, notice: 'Registration level was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @registration_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_levels/1
  # DELETE /registration_levels/1.json
  def destroy
    @registration_level = RegistrationLevel.find(params[:id])
    @registration_level.destroy

    respond_to do |format|
      format.html { redirect_to registration_levels_url }
      format.json { head :ok }
    end
  end
end
