class AddTypesToLabs < ActiveRecord::Migration
  def change
    create_table :TypesOfLabs do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
