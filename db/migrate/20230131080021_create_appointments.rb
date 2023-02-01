class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.references :customer
      t.references :counsellor
      

      t.timestamps
    end
  end
end
