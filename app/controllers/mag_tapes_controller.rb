class MagTapesController < ApplicationController
  # GET /mag_tapes
  # GET /mag_tapes.json
  def index
    @mag_tapes = MagTape.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mag_tapes }
    end
  end

  # GET /mag_tapes/1
  # GET /mag_tapes/1.json
  def show
    @mag_tape = MagTape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mag_tape }
    end
  end

  # GET /mag_tapes/new
  # GET /mag_tapes/new.json
  def new
    @mag_tape = MagTape.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mag_tape }
    end
  end

  # GET /mag_tapes/1/edit
  def edit
    @mag_tape = MagTape.find(params[:id])
  end

  # POST /mag_tapes
  # POST /mag_tapes.json
  def create
    @mag_tape = MagTape.new(params[:mag_tape])

    respond_to do |format|
      if @mag_tape.save
        format.html { redirect_to @mag_tape, notice: 'Mag tape was successfully created.' }
        format.json { render json: @mag_tape, status: :created, location: @mag_tape }
      else
        format.html { render action: "new" }
        format.json { render json: @mag_tape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mag_tapes/1
  # PUT /mag_tapes/1.json
  def update
    @mag_tape = MagTape.find(params[:id])

    respond_to do |format|
      if @mag_tape.update_attributes(params[:mag_tape])
        format.html { redirect_to @mag_tape, notice: 'Mag tape was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mag_tape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mag_tapes/1
  # DELETE /mag_tapes/1.json
  def destroy
    @mag_tape = MagTape.find(params[:id])
    @mag_tape.destroy

    respond_to do |format|
      format.html { redirect_to mag_tapes_url }
      format.json { head :ok }
    end
  end
end
