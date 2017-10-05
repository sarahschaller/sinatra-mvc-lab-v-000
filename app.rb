require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin_text = PigLatinizer.new(params[:user_phrase])

    erb :piglatinizer
  end
end
