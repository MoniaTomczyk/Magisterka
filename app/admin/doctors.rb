ActiveAdmin.register Doctor do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	permit_params :email, :password, :name, :surname, :profile, :specialization_id, :institution_id, :gender, :bith_date

	index do
    	selectable_column
    	id_column
	    column :name
	    column :surname
	    column :email
	    column :specialization
	    column :institution
	    column :gender
	    column :bith_date
	    column :profile

	    actions
	end

  	form do |f|
    	f.inputs do
	      	f.input :name
	      	f.input :surname
	     	f.input :email
		 	f.input :password
	      	f.input :specialization
	      	f.input :institution
	      	f.input :gender
	      	f.input :bith_date, start_year: 1930
	      	f.input :profile
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
