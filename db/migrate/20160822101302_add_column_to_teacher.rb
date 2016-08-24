class AddColumnToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :phone, :string
    add_column :teachers, :email, :string
    add_column :teachers, :age, :integer
    add_column :teachers, :salary, :integer
  end
end
