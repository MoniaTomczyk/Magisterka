class AddInformationToDoctor < ActiveRecord::Migration
  def change
  	add_column :doctors, :profile, :string
  end
end
