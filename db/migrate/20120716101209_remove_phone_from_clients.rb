class RemovePhoneFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :phone
  end

  def down
    add_column :clients, :phone, :string
  end
end
