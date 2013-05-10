GamingApp::Application.routes.draw do
  get '/games', to: 'games#index'
  get '/games/magic_8_ball', to: 'games#magic_8_ball', as: "magic_8_ball"
  get '/games/magic_8_ball/:question', to: 'games#magic_8_ball_play'
  get '/games/secret_number', to: 'games#secret_number', as: "secret_number"
  get '/games/secret_number/:guess', to: 'games#secret_number_play'
  get '/games/rock_paper_scissors', to: 'games#rock_paper_scissors'
  get '/games/rock_paper_scissors/:throw', to: 'games#rock_paper_scissors_play'
end
