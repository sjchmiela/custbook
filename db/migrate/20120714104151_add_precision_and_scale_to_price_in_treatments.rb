class AddPrecisionAndScaleToPriceInTreatments < ActiveRecord::Migration
  def change
  	change_column :treatments, :price, :decimal, :precision => 8, :scale => 2
  end
end
