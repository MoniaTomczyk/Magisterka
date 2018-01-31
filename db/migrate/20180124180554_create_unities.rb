class CreateUnities < ActiveRecord::Migration
  def change
    create_table :unities do |t|
  	 	t.integer :role_id
    	t.integer :user_id

    	t.timestamps null: false
    end
  end
end
