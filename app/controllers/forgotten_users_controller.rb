class ForgottenUsersController < ApplicationController
  # GET /forgotten_users
  # GET /forgotten_users.json
  def index
    @forgotten_users = ForgottenUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forgotten_users }
    end
  end

  # GET /forgotten_users/1
  # GET /forgotten_users/1.json
  def show
    @forgotten_user = ForgottenUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forgotten_user }
    end
  end

  # GET /forgotten_users/new
  # GET /forgotten_users/new.json
  def new
    @forgotten_user = ForgottenUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forgotten_user }
    end
  end

  # GET /forgotten_users/1/edit
  def edit
    @forgotten_user = ForgottenUser.find(params[:id])
  end

  # POST /forgotten_users
  # POST /forgotten_users.json
  def create
    @forgotten_user = ForgottenUser.new(params[:forgotten_user])

    respond_to do |format|
      if @forgotten_user.save
        format.html { redirect_to @forgotten_user, notice: 'Forgotten user was successfully created.' }
        format.json { render json: @forgotten_user, status: :created, location: @forgotten_user }
      else
        format.html { render action: "new" }
        format.json { render json: @forgotten_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forgotten_users/1
  # PUT /forgotten_users/1.json
  def update
    @forgotten_user = ForgottenUser.find(params[:id])

    respond_to do |format|
      if @forgotten_user.update_attributes(params[:forgotten_user])
        format.html { redirect_to @forgotten_user, notice: 'Forgotten user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @forgotten_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forgotten_users/1
  # DELETE /forgotten_users/1.json
  def destroy
    @forgotten_user = ForgottenUser.find(params[:id])
    @forgotten_user.destroy

    respond_to do |format|
      format.html { redirect_to forgotten_users_url }
      format.json { head :ok }
    end
  end
end
