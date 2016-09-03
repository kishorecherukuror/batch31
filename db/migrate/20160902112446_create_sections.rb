class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
