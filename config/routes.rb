# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  resources :stores
end
