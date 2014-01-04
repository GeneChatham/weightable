Weightable::Application.routes.draw do
  
  resources :friendships
  devise_for :users

  root 'users#index'

  resources :users do
    resources :weigh_ins do
      resources :comments
    end
  end
end

#                     Prefix Verb   URI Pattern                                                        Controller#Action
#                friendships GET    /friendships(.:format)                                             friendships#index
#                            POST   /friendships(.:format)                                             friendships#create
#             new_friendship GET    /friendships/new(.:format)                                         friendships#new
#            edit_friendship GET    /friendships/:id/edit(.:format)                                    friendships#edit
#                 friendship GET    /friendships/:id(.:format)                                         friendships#show
#                            PATCH  /friendships/:id(.:format)                                         friendships#update
#                            PUT    /friendships/:id(.:format)                                         friendships#update
#                            DELETE /friendships/:id(.:format)                                         friendships#destroy
#           new_user_session GET    /users/sign_in(.:format)                                           devise/sessions#new
#               user_session POST   /users/sign_in(.:format)                                           devise/sessions#create
#       destroy_user_session DELETE /users/sign_out(.:format)                                          devise/sessions#destroy
#              user_password POST   /users/password(.:format)                                          devise/passwords#create
#          new_user_password GET    /users/password/new(.:format)                                      devise/passwords#new
#         edit_user_password GET    /users/password/edit(.:format)                                     devise/passwords#edit
#                            PATCH  /users/password(.:format)                                          devise/passwords#update
#                            PUT    /users/password(.:format)                                          devise/passwords#update
#   cancel_user_registration GET    /users/cancel(.:format)                                            devise/registrations#cancel
#          user_registration POST   /users(.:format)                                                   devise/registrations#create
#      new_user_registration GET    /users/sign_up(.:format)                                           devise/registrations#new
#     edit_user_registration GET    /users/edit(.:format)                                              devise/registrations#edit
#                            PATCH  /users(.:format)                                                   devise/registrations#update
#                            PUT    /users(.:format)                                                   devise/registrations#update
#                            DELETE /users(.:format)                                                   devise/registrations#destroy
#                       root GET    /                                                                  users#index
#     user_weigh_in_comments GET    /users/:user_id/weigh_ins/:weigh_in_id/comments(.:format)          comments#index
#                            POST   /users/:user_id/weigh_ins/:weigh_in_id/comments(.:format)          comments#create
#  new_user_weigh_in_comment GET    /users/:user_id/weigh_ins/:weigh_in_id/comments/new(.:format)      comments#new
# edit_user_weigh_in_comment GET    /users/:user_id/weigh_ins/:weigh_in_id/comments/:id/edit(.:format) comments#edit
#      user_weigh_in_comment GET    /users/:user_id/weigh_ins/:weigh_in_id/comments/:id(.:format)      comments#show
#                            PATCH  /users/:user_id/weigh_ins/:weigh_in_id/comments/:id(.:format)      comments#update
#                            PUT    /users/:user_id/weigh_ins/:weigh_in_id/comments/:id(.:format)      comments#update
#                            DELETE /users/:user_id/weigh_ins/:weigh_in_id/comments/:id(.:format)      comments#destroy
#             user_weigh_ins GET    /users/:user_id/weigh_ins(.:format)                                weigh_ins#index
#                            POST   /users/:user_id/weigh_ins(.:format)                                weigh_ins#create
#          new_user_weigh_in GET    /users/:user_id/weigh_ins/new(.:format)                            weigh_ins#new
#         edit_user_weigh_in GET    /users/:user_id/weigh_ins/:id/edit(.:format)                       weigh_ins#edit
#              user_weigh_in GET    /users/:user_id/weigh_ins/:id(.:format)                            weigh_ins#show
#                            PATCH  /users/:user_id/weigh_ins/:id(.:format)                            weigh_ins#update
#                            PUT    /users/:user_id/weigh_ins/:id(.:format)                            weigh_ins#update
#                            DELETE /users/:user_id/weigh_ins/:id(.:format)                            weigh_ins#destroy
#                      users GET    /users(.:format)                                                   users#index
#                            POST   /users(.:format)                                                   users#create
#                   new_user GET    /users/new(.:format)                                               users#new
#                  edit_user GET    /users/:id/edit(.:format)                                          users#edit
#                       user GET    /users/:id(.:format)                                               users#show
#                            PATCH  /users/:id(.:format)                                               users#update
#                            PUT    /users/:id(.:format)                                               users#update
#                            DELETE /users/:id(.:format)                                               users#destroy





