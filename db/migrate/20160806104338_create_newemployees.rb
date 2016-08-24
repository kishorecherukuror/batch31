class CreateNewemployees < ActiveRecord::Migration
  def change
    create_table :newemployees do |t|
      t.string :name
      t.integer :age
      t.string :dob
      t.string :gender
      t.string :maritals
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :contact
      t.string :email
      t.string :photo

      t.timestamps null: false
    end
  end
end
