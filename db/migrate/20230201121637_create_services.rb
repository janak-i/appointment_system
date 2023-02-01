class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :desc
      t.references :counsellor

      t.timestamps
    end
  end
end
