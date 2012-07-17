
class TreatmentsController < ApplicationController
  def search
    @treatments = Treatment.all
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
    update_ttype(params)
    update_color(params)
    @treatment = Treatment.new(params[:treatment])
    if @treatment.save
      if params[:small] == "true"
	redirect_to @treatment.client, :notice => t("treatment.create.success")
      else
	redirect_to(@treatment, :notice => t("treatment.create.success"))
      end
    else
      render :action => "new"
    end
  end

  def update
    update_ttype(params)
    update_color(params)
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
