require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/puppy' do
        erb :display_puppy
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = params
        erb :display_puppy
    end

end
