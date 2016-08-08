class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname
      t.string :ful_name
      t.string :department

      t.timestamps null: false
    end
  end
end
