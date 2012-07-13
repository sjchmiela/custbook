
class ClientsController < ApplicationController
  def search
    @clients = Client.all
  end

  def page
    @page = params[:page] == nil ? 1 : params[:page].to_i
    @clients = Client.order(:name).limit(10).offset((@page-1)*10)
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(params[:client])
      if @client.save
        redirect_to(@client, :notice => t("client.create.success"))
      else
        render :action => "new"
      end
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      redirect_to @client, :notice => t("client.update.success")
    else
      render :action => :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.treatments.each do |t|
      tr = Treatment.find(t.id)
      tr.destroy
    end
    @client.destroy
    redirect_to (search_client_url)
  end
end
