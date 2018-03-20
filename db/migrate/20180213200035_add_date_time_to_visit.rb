class AddDateTimeToVisit < ActiveRecord::Migration
  def change
  	add_column :visits, :date, :datetime
  end
end
