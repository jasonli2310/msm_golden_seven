Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/new_form",  { :controller => "directors", :action => "new_form" })
  get("/create",              { :controller => "directors", :action => "create_row" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
  get("/update_directors/:id", { :controller => "directors", :action => "update_row" })


  get("/actors",           { :controller => "actors", :action => "index" })
  get("/actors/new_form",  { :controller => "actors", :action => "new_form" })
  get("/create",              { :controller => "actors", :action => "create_row" })
  get("/actors/:id",       { :controller => "actors", :action => "show" })
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
  get("/update_actors/:id", { :controller => "actors", :action => "update_row" })

end
