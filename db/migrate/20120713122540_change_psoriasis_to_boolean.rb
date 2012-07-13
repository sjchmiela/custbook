class ChangePsoriasisToBoolean < ActiveRecord::Migration
  def up
    change_column :clients, :psoriasis, :boolean
  end

  def down
    change_column :clients, :psoriasis, :string
  end
end
