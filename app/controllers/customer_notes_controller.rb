class CustomerNotesController < ApplicationController
  # GET /customer_notes
  # GET /customer_notes.json
  def index
    @customer_notes = CustomerNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_notes }
    end
  end

  # GET /customer_notes/1
  # GET /customer_notes/1.json
  def show
    @customer_note = CustomerNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_note }
    end
  end

  # GET /customer_notes/new
  # GET /customer_notes/new.json
  def new
    @customer_note = CustomerNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_note }
    end
  end

  # GET /customer_notes/1/edit
  def edit
    @customer_note = CustomerNote.find(params[:id])
  end

  # POST /customer_notes
  # POST /customer_notes.json
  def create
    @customer_note = CustomerNote.new(params[:customer_note])

    respond_to do |format|
      if @customer_note.save
        format.html { redirect_to @customer_note, notice: 'Customer note was successfully created.' }
        format.json { render json: @customer_note, status: :created, location: @customer_note }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_notes/1
  # PUT /customer_notes/1.json
  def update
    @customer_note = CustomerNote.find(params[:id])

    respond_to do |format|
      if @customer_note.update_attributes(params[:customer_note])
        format.html { redirect_to @customer_note, notice: 'Customer note was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_notes/1
  # DELETE /customer_notes/1.json
  def destroy
    @customer_note = CustomerNote.find(params[:id])
    @customer_note.destroy

    respond_to do |format|
      format.html { redirect_to customer_notes_url }
      format.json { head :ok }
    end
  end
end
