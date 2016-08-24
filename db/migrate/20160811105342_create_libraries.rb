class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :book_name
      t.string :author
      t.string :category

      t.timestamps null: false
    end
  end
end
