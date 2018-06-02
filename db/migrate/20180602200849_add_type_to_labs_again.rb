class AddTypeToLabsAgain < ActiveRecord::Migration
  def change
  	add_column :labs, :type, :string
  end
end
