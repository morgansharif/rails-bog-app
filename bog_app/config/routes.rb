Rails.application.routes.draw do

  root "creatures#index"

  get     "/creatures",             to: "creatures#index",    as: "creatures"
  get     "/creatures/:id",         to: "creatures#show",     as: "creature"
  get     "/creatures/:id/edit",    to: "creatures#edit",     as: "edit_creature"
end
