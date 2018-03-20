class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|

      t.string :name
    end
    add_column :institutions, :city_id, :integer
  	add_index :institutions, :city_id
  end
end
