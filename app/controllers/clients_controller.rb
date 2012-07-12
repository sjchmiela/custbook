
class ClientsController < ApplicationController
  def search
  end

  def page
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit
  end

  def create
    @client = Client.new(params[:client])
    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => t("client.create.success")) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
  end

  def destroy
  end
end
