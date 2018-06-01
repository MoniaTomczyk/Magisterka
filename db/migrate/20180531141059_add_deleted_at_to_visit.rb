class AddDeletedAtToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :deleted_at, :datetime
    add_index :visits, :deleted_at
  end
end
