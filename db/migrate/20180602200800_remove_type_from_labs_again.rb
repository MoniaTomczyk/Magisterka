class RemoveTypeFromLabsAgain < ActiveRecord::Migration
  def change
  	remove_column :labs, :type, :string
  end
end
