Rails.application.routes.draw do
  devise_for :users
  namespace:api, defaults: {format: :json} do
    namespace:v1 do
      # We are going to list our resources here
    end
  end
end
