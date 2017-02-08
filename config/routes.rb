Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })

  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  get("/directors/new_form",     { :controller => "directors", :action => "new_form" })
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })

  get("/update_directors/:id", { :controller => "photos", :action => "update_row" })

end
