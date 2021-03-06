# frozen_string_literal: true

Rails.application.routes.draw do
  resources :records
  resources :articles, path: "blog"
  get  "cv", to: "home#cv"
  post "",   to: "home#mail"

  root    "home#index"
  mathjax "mathjax"
end
