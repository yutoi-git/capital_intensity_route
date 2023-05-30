Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :lines, param: :line_code
      resources :stations, param: :line_code
    end
  end
end