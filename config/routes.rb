Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'calendar/show'

 # devise_for :doctors
#  devise_for :patients
 # devise_for :users

 # resources :users, only: [:index, :show]
 root "pages#index"

 devise_for :doctors, path: 'doctors', controllers: { sessions: "doctors/sessions" }
 devise_for :patients, path: 'patients', controllers: { sessions: "patients/sessions" }
 # devise_for :doctors, path: 'doctors'
# eg. http://localhost:3000/users/sign_in
 # devise_for :patients, path: 'patients'
# eg. http://localhost:3000/admins/sign_inauthenticated_patient_root_path
 #authenticated_patient_root_path

 get '/home', to: 'static_pages#home'
 get '/calendar', to: 'static_pages#calendar'

 get 'patients/home', to: 'patients/home#index', as: 'authenticated_patient'
 get 'patients/visits', to: 'patients/visits#index', as: 'patient_visits'
 get 'patients/visits/new_appointment', to: 'patients/visits#new_appointment', as: 'visits_form'
 get 'patients/visits/save_appointment', to: 'patients/visits#save_appointment'
 get 'patients/visits/filtered_institutions', to: 'patients/visits#filtered_institutions'
 get 'patients/visits/filtered_doctors', to: 'patients/visits#filtered_doctors'
 get 'patients/visits/filtered_specializations', to: 'patients/visits#filtered_specializations'
 get 'patients/visits/show_buttons', to: 'patients/visits#show_buttons'
 get 'patients/visits/show_details', to: 'patients/visits#show_details'
 get 'patients/visits/show_visits_list', to: 'patients/visits#show_visits_list'
 get 'patients/visits/assign_visit', to: 'patients/visits#assign_visit'
 get 'patients/sign_up', to: 'patients/registration#new', as: 'sign_up'
 get 'patients/visits/show/:id', to: 'patients/visits#show', as: 'patient_visit_show'

 get 'patients/labs', to: 'patients/labs#index', as: 'patient_labs'
 get 'patients/visits/delete_visit/:id', to: 'patients/visits#delete_visit', as: 'delete_visit'



 #get 'patients/show', to: 'patients#show', as: 'patient_show'

 get 'doctors/home', to: 'doctors/home#index', as: 'authenticated_doctor'
 get 'doctors/visits', to: 'doctors/visits#index', as: 'doctor_visits'
 get 'doctors/patients', to: 'doctors/patients#index', as: 'doctor_patients'  
 get 'doctors/visits/show/:id', to: 'doctors/visits#show', as: 'visit_show'
 get 'doctors/patients/show/:id', to: 'doctors/patients#show', as: 'patient_show'

 get 'doctors/visits/delete_visit', to: 'doctors/visits#delete_visit'

 get 'doctors/visits/update_note', to: 'doctors/visits#update_note'
 get 'doctors/labs', to: 'doctors/labs#index', as: 'doctor_labs'
 get 'doctors/labs/new', to: 'doctors/labs#new', as: 'labs_form' 
 post 'doctors/labs/create', to: 'doctors/labs#create', as: 'labsy_form' 
 get 'doctors/labs/show/:id', to: 'doctors/labs#show', as: 'doctors_labs_show'
 get 'doctors/labs/:id/download_pdf', to: 'doctors/labs#download_pdf', as: 'labs_download_pdf'
 get 'doctors/labs/download_file', to: 'doctors/labs#download_file', as: 'download_file'


 #get 'doctors/visits/new', to: 'doctors/visits#new', as: 'visits_form'

 resource :calendar, only: [:show], controller: :calendar
 resources :labs, :member => { :atachment => :get }
 get '/calendar/show', to: "calendar#show"
 #get 'authenticated_patient_root_path', to: 'static_pages#home'

end
