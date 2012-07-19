
class ClientsController < ApplicationController
  expose(:client)
  expose(:clients) { Client.order("surname")}
  expose(:treatments) { client.treatments }

  respond_to :html

  def create
   client.save
   respond_with(client)
  end

  def update
    client.save
    respond_with(client)
  end

  def destroy
    client.treatments.each do |t|
      tr = Treatment.find(t.id)
      tr.destroy
    end
    client.destroy
    redirect_to clients_path
  end
end
