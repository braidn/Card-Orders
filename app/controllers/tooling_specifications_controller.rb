class ToolingSpecificationsController < ApplicationController
  # GET /tooling_specifications
  # GET /tooling_specifications.json
  def index
    @tooling_specifications = ToolingSpecification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tooling_specifications }
    end
  end

  # GET /tooling_specifications/1
  # GET /tooling_specifications/1.json
  def show
    @tooling_specification = ToolingSpecification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tooling_specification }
    end
  end

  # GET /tooling_specifications/new
  # GET /tooling_specifications/new.json
  def new
    @tooling_specification = ToolingSpecification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tooling_specification }
    end
  end

  # GET /tooling_specifications/1/edit
  def edit
    @tooling_specification = ToolingSpecification.find(params[:id])
  end

  # POST /tooling_specifications
  # POST /tooling_specifications.json
  def create
    @tooling_specification = ToolingSpecification.new(params[:tooling_specification])

    respond_to do |format|
      if @tooling_specification.save
        format.html { redirect_to @tooling_specification, notice: 'Tooling Spec was successfully created.' }
        format.json { render json: @tooling_specification, status: :created, location: @tooling_specification }
      else
        format.html { render action: "new" }
        format.json { render json: @tooling_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tooling_specifications/1
  # PUT /tooling_specifications/1.json
  def update
    @tooling_specification = ToolingSpecification.find(params[:id])

    respond_to do |format|
      if @tooling_specification.update_attributes(params[:tooling_specification])
        format.html { redirect_to @tooling_specification, notice: 'Tooling specification was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tooling_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tooling_specifications/1
  # DELETE /tooling_specifications/1.json
  def destroy
    @tooling_specification = ToolingSpecification.find(params[:id])
    @tooling_specification.destroy

    respond_to do |format|
      format.html { redirect_to tooling_specifications_url }
      format.json { head :ok }
    end
  end
end
