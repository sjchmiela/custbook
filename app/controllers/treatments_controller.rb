
class TreatmentsController < ApplicationController
  expose(:treatment)
  expose(:treatments) { Treatment.order(:date)}
  respond_to :html

  def search
    #@treatments = Treatment.all
  end

  def show
   # @treatment = Treatment.find(params[:id])
  end

  def new
    #@treatment = Treatment.new
  end

  def edit
   # @treatment = Treatment.find(params[:id])
  end

  def create
    update_ttype(params)
    update_color(params)
    treatment.save
    respond_with treatment
  end

  def update
    update_ttype(params)
    update_color(params)
    treatment.save
    respond_with treatment
  end

  def destroy
    treatment.destroy
    respond_with treatment
  end

  private

  def update_ttype (params)
    if params[:ttype_from_selection] != "new"
      params[:treatment][:ttype] = params[:ttype_from_selection]
    end
  end
  def update_color (params)
    if params[:color_from_selection] != "new"
      params[:treatment][:color] = params[:color_from_selection]
    end
  end
end
