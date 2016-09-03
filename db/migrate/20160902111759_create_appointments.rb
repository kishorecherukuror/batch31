class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :parents, index: true, foreign_key: true
      t.string :appointment_date

      t.timestamps null: false
    end
  end
end
