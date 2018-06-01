class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.datetime :date
      t.string :type
      t.string :additional_info
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps null: false
    end
     add_index :labs, [:patient_id, :doctor_id]
  end
end
