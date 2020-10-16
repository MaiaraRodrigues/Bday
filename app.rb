require 'sinatra'
require 'shotgun'

class Bday < Sinatra::Base

  get '/' do
    erb(:index)
  end

end 