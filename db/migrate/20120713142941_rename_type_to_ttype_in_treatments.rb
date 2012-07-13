class RenameTypeToTtypeInTreatments < ActiveRecord::Migration
  def up
  	rename_column :treatments, :type, :ttype
  end

  def down
  	rename_column :treatments, :ttype, :type
  end
end
