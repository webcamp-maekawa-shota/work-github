Rails.application.routes.draw do
  #　顧客用
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  # 管理者用
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  root to: "public/homes#top"
  get "about" => "public/homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
