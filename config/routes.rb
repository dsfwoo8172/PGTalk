# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users

  namespace :api do
    namespace :v1 do
    end
  end
end
