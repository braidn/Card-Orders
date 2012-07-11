class MatCategoriesController < ApplicationController
  # GET /mat_categories
  # GET /mat_categories.json
  def index
    @mat_categories = MatCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mat_categories }
    end
  end

  # GET /mat_categories/1
  # GET /mat_categories/1.json
  def show
    @mat_category = MatCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mat_category }
    end
  end

  # GET /mat_categories/new
  # GET /mat_categories/new.json
  def new
    @mat_category = MatCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mat_category }
    end
  end

  # GET /mat_categories/1/edit
  def edit
    @mat_category = MatCategory.find(params[:id])
  end

  # POST /mat_categories
  # POST /mat_categories.json
  def create
    @mat_category = MatCategory.new(params[:mat_category])

    respond_to do |format|
      if @mat_category.save
        format.html { redirect_to @mat_category, notice: 'Material Category was successfully created.' }
        format.json { render json: @mat_category, status: :created, location: @mat_category }
      else
        format.html { render action: "new" }
        format.json { render json: @mat_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mat_categories/1
  # PUT /mat_categories/1.json
  def update
    @mat_category = MatCategory.find(params[:id])

    respond_to do |format|
      if @mat_category.update_attributes(params[:mat_category])
        format.html { redirect_to @mat_category, notice: 'Mat category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mat_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mat_categories/1
  # DELETE /mat_categories/1.json
  def destroy
    @mat_category = MatCategory.find(params[:id])
    @mat_category.destroy

    respond_to do |format|
      format.html { redirect_to mat_categories_url }
      format.json { head :ok }
    end
  end
end
