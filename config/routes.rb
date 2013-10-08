QuizRunner::Application.routes.draw do
  scope format: false do
    root to: 'home#show'

    resources :quizzes, only: %w(index show) do
    end

    resources :plays, only: %w(index create show) do
      member do
        num_ptn = /\d+/
        post :players, action: 'create_player'
        get  :result
        get  "/play(/:step)", action: 'play', as: :play, step: num_ptn
        post "/play(/:step)", action: 'do_play', step: num_ptn
      end
    end
  end
end

