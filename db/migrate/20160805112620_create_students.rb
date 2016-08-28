class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.string :gender
      t.string :dob

      t.timestamps null: false
    end
  end
end
