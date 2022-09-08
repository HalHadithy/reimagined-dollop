Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :vendors, only: [:index, :show]
  resources :sweets, only: [:index, :show]
  resources :vendor_sweets, only: [:create, :destroy]


end



# GET	/photos	photos#index	display a list of all photos
# GET	/photos/new	photos#new	return an HTML form for creating a new photo
# POST	/photos	photos#create	create a new photo
# GET	/photos/:id	photos#show	display a specific photo
# GET	/photos/:id/edit	photos#edit	return an HTML form for editing a photo
# PATCH/PUT	/photos/:id	photos#update	update a specific photo
# DELETE	/photos/:id	photos#destroy	delete a specific photo
