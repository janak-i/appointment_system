class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :feed_desc
      t.references :customer
      t.references :counsellor

      t.timestamps
    end
  end
end
