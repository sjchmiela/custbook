class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :type
      t.date :date
      t.integer :client_id
      t.decimal :price
      t.string :color
      t.boolean :correction
      t.text :additional_info

      t.timestamps
    end
  end
end
