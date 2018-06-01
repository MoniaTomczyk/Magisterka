class TryToAddTypes < ActiveRecord::Migration
  def change
  	add_column :labs, :type, :string
  end

  def data
    Lab.create!(type: 'Rentgen')
    Lab.create!(type: 'Badanie krwi')
    Lab.create!(type: 'EKG')
  end
end
