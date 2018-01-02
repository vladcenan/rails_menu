Rails.application.routes.draw do
  root 'menu#index'
 
  get 'menu' => 'menu#index'

  get 'menu/food' #=> 'menu#beverages' redirect food to beverages action

  get 'menu/beverages'
end
