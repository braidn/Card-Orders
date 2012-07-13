class StepRepeatsController < ApplicationController
  # GET /step_repeats
  # GET /step_repeats.json
  def index
    @step_repeats = StepRepeat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @step_repeats }
    end
  end

  # GET /step_repeats/1
  # GET /step_repeats/1.json
  def show
    @step_repeat = StepRepeat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step_repeat }
    end
  end

  # GET /step_repeats/new
  # GET /step_repeats/new.json
  def new
    @step_repeat = StepRepeat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step_repeat }
    end
  end

  # GET /step_repeats/1/edit
  def edit
    @step_repeat = StepRepeat.find(params[:id])
  end

  # POST /step_repeats
  # POST /step_repeats.json
  def create
    @step_repeat = StepRepeat.new(params[:step_repeat])

    respond_to do |format|
      if @step_repeat.save
        format.html { redirect_to @step_repeat, notice: 'Step Repeat was successfully created.' }
        format.json { render json: @step_repeat, status: :created, location: @step_repeat }
      else
        format.html { render action: "new" }
        format.json { render json: @step_repeat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /step_repeats/1
  # PUT /step_repeats/1.json
  def update
    @step_repeat = StepRepeat.find(params[:id])

    respond_to do |format|
      if @step_repeat.update_attributes(params[:step_repeat])
        format.html { redirect_to @step_repeat, notice: 'Step repeat was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @step_repeat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_repeats/1
  # DELETE /step_repeats/1.json
  def destroy
    @step_repeat = StepRepeat.find(params[:id])
    @step_repeat.destroy

    respond_to do |format|
      format.html { redirect_to step_repeats_url }
      format.json { head :ok }
    end
  end
end
