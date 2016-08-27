class CreateSpects < ActiveRecord::Migration
  def change
    create_table :spects do |t|
      t.string :name
      t.string :design
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
