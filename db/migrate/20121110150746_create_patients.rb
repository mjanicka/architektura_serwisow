class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.string :date_of_birth
      t.string :email
      t.string :phone
      t.string :street
      t.integer :house_number
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
