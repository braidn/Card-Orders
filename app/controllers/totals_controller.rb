class TotalsController < ApplicationController
  def index
    @totals = Total.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @total = Total.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @total = Total.new

    respond_to do |format|
      format.html
    end

  end

  def create
    @total = Total.new(params[:total])

    respond_to do |format|
      if @total.save
        format.html {redirect_to @total, notice: "Total was successfully created"}
      else
        format.html {render action: "new"}
      end
    end
  end
end
