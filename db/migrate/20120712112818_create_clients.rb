class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :nid
      t.date :birthday
      t.string :phone
      t.string :cell
      t.string :email
      t.string :country
      t.boolean :diabetes
      t.string :psoriasis
      t.boolean :steroids
      t.boolean :pregnancy
      t.boolean :yellows
      t.boolean :allergy
      t.boolean :sensitive_skin
      t.boolean :herpes
      t.string :found
      t.text :additional_info

      t.timestamps
    end
  end
end
