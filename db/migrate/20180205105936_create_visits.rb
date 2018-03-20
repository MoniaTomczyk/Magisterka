class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
    	t.timestamps null: false
    end
	add_column :visits, :details, :string
	add_column :visits, :patient_id, :integer
	add_column :visits, :doctor_id, :integer
	add_column :visits, :notes, :string
    add_index :visits, [:patient_id, :doctor_id]
  end
end
