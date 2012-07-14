class AddHerpesInfoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :herpes_info, :string
  end
end
