class AddColumnsToDoctor < ActiveRecord::Migration
  def change
  	add_column :doctors, :name, :string
  	add_column :doctors, :surname, :string
  	add_column :doctors, :bith_date, :date
  	add_column :doctors, :gender, :integer
  	add_column :doctors, :specialization_id, :integer

  	add_column :patients, :name, :string
  	add_column :patients, :surname, :string
  	add_column :patients, :bith_date, :date
  	add_column :patients, :gender, :integer

  	add_index :doctors, :specialization_id
  end
end