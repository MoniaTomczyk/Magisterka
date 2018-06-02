class AddTypeOfLabs < ActiveRecord::Migration
  def change
    create_table :type_of_labs do |t|
	  t.string :name
      t.timestamps null: false
    end
  end
end
