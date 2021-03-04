# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  resources :stores do
    collection do
      get :get_location
    end
  end
end
