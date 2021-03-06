Rails.application.routes.draw do
  get 'about' => 'pages#about', as: 'about'
  
  get 'imh' => 'pages#imh', as: 'imh'
  
  get 'patientdb' => 'patients#patientdb', as: 'patientdb'

  get 'index' => 'welcome#index'
   
  get 'patientspage' => 'patients#patientspage', as: 'patientspage'
  
  get 'updated' => 'patients#updated', as: 'updated'
  
  get 'search' => 'patients#index', as: 'search'
  
  get 'welcome/index'
  
  get 'newpatient' => 'patients#newpatient'
  
  resources :patients do
	resources :requests
  end
	
  
  root 'welcome#index', as: 'home'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
