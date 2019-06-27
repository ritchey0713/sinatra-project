require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "sinatra_test"
  end

  get "/" do
    erb :home_page
  end

end
