class SecuritySpecsController < ApplicationController
  # GET /security_specs
  # GET /security_specs.json
  def index
    @security_specs = SecuritySpec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_specs }
    end
  end

  # GET /security_specs/1
  # GET /security_specs/1.json
  def show
    @security_spec = SecuritySpec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @security_spec }
    end
  end

  # GET /security_specs/new
  # GET /security_specs/new.json
  def new
    @security_spec = SecuritySpec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @security_spec }
    end
  end

  # GET /security_specs/1/edit
  def edit
    @security_spec = SecuritySpec.find(params[:id])
  end

  # POST /security_specs
  # POST /security_specs.json
  def create
    @security_spec = SecuritySpec.new(params[:security_spec])

    respond_to do |format|
      if @security_spec.save
        format.html { redirect_to @security_spec, notice: 'Security Spec was successfully created.' }
        format.json { render json: @security_spec, status: :created, location: @security_spec }
      else
        format.html { render action: "new" }
        format.json { render json: @security_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_specs/1
  # PUT /security_specs/1.json
  def update
    @security_spec = SecuritySpec.find(params[:id])

    respond_to do |format|
      if @security_spec.update_attributes(params[:security_spec])
        format.html { redirect_to @security_spec, notice: 'Security spec was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_specs/1
  # DELETE /security_specs/1.json
  def destroy
    @security_spec = SecuritySpec.find(params[:id])
    @security_spec.destroy

    respond_to do |format|
      format.html { redirect_to security_specs_url }
      format.json { head :ok }
    end
  end
end
