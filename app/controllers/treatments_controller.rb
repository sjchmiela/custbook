
class TreatmentsController < ApplicationController
  def search
    @treatments = Treatment.all
  end

  def page
    @page = params[:page] == nil ? 1 : params[:page].to_i
    @treatments = Treatment.order(:date).limit(10).offset((@page-1)*10)
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def create
    if params[:treatment][:ttype].empty?
      params[:treatment][:ttype] = params[:ttype_from_selection]
    end
    @treatment = Treatment.new(params[:treatment])
    if @treatment.save
      redirect_to(@treatment, :notice => t("treatment.create.success"))
    else
      render :action => "new"
    end
  end

  def update
    @treatment = Treatment.find(params[:id])
    if @treatment.update_attributes(params[:treatment])
      redirect_to @treatment, :notice => t("treatment.update.success")
    else
      render :action => :edit
    end
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy
    redirect_to (search_treatment_url)
  end
end
