class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name

      t.timestamps null: false
    end
    add_column :labs, :type_id, :integer
    add_index :labs, :type_id
  end
end
