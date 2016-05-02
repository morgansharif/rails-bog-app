Rails.application.routes.draw do

  root "creatures#index"

  get     "/creatures",             to: "creatures#index",    as: "creatures"
  get     "/creatures/:id/edit",    to: "creatures#edit",     as: "edit_creature"
  get     "/creatures/new",         to: "creatures#new",      as: "new_creature"
  post    "/creatures",             to: "creatures#create"
end
