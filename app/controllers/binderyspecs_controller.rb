class BinderyspecsController < ApplicationController
  # GET /binderyspecs
  # GET /binderyspecs.json
  def index
    @binderyspecs = Binderyspec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @binderyspecs }
    end
  end

  # GET /binderyspecs/1
  # GET /binderyspecs/1.json
  def show
    @binderyspec = Binderyspec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @binderyspec }
    end
  end

  # GET /binderyspecs/new
  # GET /binderyspecs/new.json
  def new
    @binderyspec = Binderyspec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @binderyspec }
    end
  end

  # GET /binderyspecs/1/edit
  def edit
    @binderyspec = Binderyspec.find(params[:id])
  end

  # POST /binderyspecs
  # POST /binderyspecs.json
  def create
    @binderyspec = Binderyspec.new(params[:binderyspec])

    respond_to do |format|
      if @binderyspec.save
        format.html { redirect_to @binderyspec, notice: 'Binderyspec was successfully created.' }
        format.json { render json: @binderyspec, status: :created, location: @binderyspec }
      else
        format.html { render action: "new" }
        format.json { render json: @binderyspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /binderyspecs/1
  # PUT /binderyspecs/1.json
  def update
    @binderyspec = Binderyspec.find(params[:id])

    respond_to do |format|
      if @binderyspec.update_attributes(params[:binderyspec])
        format.html { redirect_to @binderyspec, notice: 'Binderyspec was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @binderyspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binderyspecs/1
  # DELETE /binderyspecs/1.json
  def destroy
    @binderyspec = Binderyspec.find(params[:id])
    @binderyspec.destroy

    respond_to do |format|
      format.html { redirect_to binderyspecs_url }
      format.json { head :ok }
    end
  end
end
