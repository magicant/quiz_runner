QuizRunner::Application.routes.draw do
  root to: 'home#show'

  resources :quizzes do
  end

  resources :plays do
  end
end

