class AddDoctorIdToInstitution < ActiveRecord::Migration
  def change
  	add_column :doctors, :institution_id, :integer
  	add_index :doctors, :institution_id
  end
end
