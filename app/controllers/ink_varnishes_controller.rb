class InkVarnishesController < ApplicationController
  # GET /ink_varnishes
  # GET /ink_varnishes.json
  def index
    @ink_varnishes = InkVarnish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ink_varnishes }
    end
  end

  # GET /ink_varnishes/1
  # GET /ink_varnishes/1.json
  def show
    @ink_varnish = InkVarnish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ink_varnish }
    end
  end

  # GET /ink_varnishes/new
  # GET /ink_varnishes/new.json
  def new
    @ink_varnish = InkVarnish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ink_varnish }
    end
  end

  # GET /ink_varnishes/1/edit
  def edit
    @ink_varnish = InkVarnish.find(params[:id])
  end

  # POST /ink_varnishes
  # POST /ink_varnishes.json
  def create
    @ink_varnish = InkVarnish.new(params[:ink_varnish])

    respond_to do |format|
      if @ink_varnish.save
        format.html { redirect_to @ink_varnish, notice: 'Ink varnish was successfully created.' }
        format.json { render json: @ink_varnish, status: :created, location: @ink_varnish }
      else
        format.html { render action: "new" }
        format.json { render json: @ink_varnish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ink_varnishes/1
  # PUT /ink_varnishes/1.json
  def update
    @ink_varnish = InkVarnish.find(params[:id])

    respond_to do |format|
      if @ink_varnish.update_attributes(params[:ink_varnish])
        format.html { redirect_to @ink_varnish, notice: 'Ink varnish was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ink_varnish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ink_varnishes/1
  # DELETE /ink_varnishes/1.json
  def destroy
    @ink_varnish = InkVarnish.find(params[:id])
    @ink_varnish.destroy

    respond_to do |format|
      format.html { redirect_to ink_varnishes_url }
      format.json { head :ok }
    end
  end
end
