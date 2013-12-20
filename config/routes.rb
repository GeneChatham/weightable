Weightable::Application.routes.draw do
  resources :friendships
  devise_for :users

  root 'users#index'

  resources :users do
    resources :weighins do
      resources :comments
    end
  end
end

#                    Prefix Verb   URI Pattern                                                      Controller#Action
#          new_user_session GET    /users/sign_in(.:format)                                         devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                         devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                        devise/sessions#destroy
#             user_password POST   /users/password(.:format)                                        devise/passwords#create
#         new_user_password GET    /users/password/new(.:format)                                    devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                   devise/passwords#edit
#                           PATCH  /users/password(.:format)                                        devise/passwords#update
#                           PUT    /users/password(.:format)                                        devise/passwords#update
#  cancel_user_registration GET    /users/cancel(.:format)                                          devise/registrations#cancel
#         user_registration POST   /users(.:format)                                                 devise/registrations#create
#     new_user_registration GET    /users/sign_up(.:format)                                         devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                            devise/registrations#edit
#                           PATCH  /users(.:format)                                                 devise/registrations#update
#                           PUT    /users(.:format)                                                 devise/registrations#update
#                           DELETE /users(.:format)                                                 devise/registrations#destroy
#     user_weighin_comments GET    /users/:user_id/weighins/:weighin_id/comments(.:format)          comments#index
#                           POST   /users/:user_id/weighins/:weighin_id/comments(.:format)          comments#create
#  new_user_weighin_comment GET    /users/:user_id/weighins/:weighin_id/comments/new(.:format)      comments#new
# edit_user_weighin_comment GET    /users/:user_id/weighins/:weighin_id/comments/:id/edit(.:format) comments#edit
#      user_weighin_comment GET    /users/:user_id/weighins/:weighin_id/comments/:id(.:format)      comments#show
#                           PATCH  /users/:user_id/weighins/:weighin_id/comments/:id(.:format)      comments#update
#                           PUT    /users/:user_id/weighins/:weighin_id/comments/:id(.:format)      comments#update
#                           DELETE /users/:user_id/weighins/:weighin_id/comments/:id(.:format)      comments#destroy
#             user_weighins GET    /users/:user_id/weighins(.:format)                               weighins#index
#                           POST   /users/:user_id/weighins(.:format)                               weighins#create
#          new_user_weighin GET    /users/:user_id/weighins/new(.:format)                           weighins#new
#         edit_user_weighin GET    /users/:user_id/weighins/:id/edit(.:format)                      weighins#edit
#              user_weighin GET    /users/:user_id/weighins/:id(.:format)                           weighins#show
#                           PATCH  /users/:user_id/weighins/:id(.:format)                           weighins#update
#                           PUT    /users/:user_id/weighins/:id(.:format)                           weighins#update
#                           DELETE /users/:user_id/weighins/:id(.:format)                           weighins#destroy
#                     users GET    /users(.:format)                                                 users#index
#                           POST   /users(.:format)                                                 users#create
#                  new_user GET    /users/new(.:format)                                             users#new
#                 edit_user GET    /users/:id/edit(.:format)                                        users#edit
#                      user GET    /users/:id(.:format)                                             users#show
#                           PATCH  /users/:id(.:format)                                             users#update
#                           PUT    /users/:id(.:format)                                             users#update
#                           DELETE /users/:id(.:format)                                             users#destroy