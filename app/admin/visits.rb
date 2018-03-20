ActiveAdmin.register Visit do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	permit_params :date, :doctor_id

	index do
    	selectable_column
    	id_column
	    column :date
	    column :doctor
	    
	    actions
	end

  	form do |f|
    	f.inputs do
	      	f.input :date, start_year: DateTime.now.year
	      	f.input :doctor
    	end
    	f.actions
 	end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
