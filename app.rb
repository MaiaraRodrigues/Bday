require 'sinatra'
require 'shotgun'
require 'date'

class Bday < Sinatra::Base
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @birthday = Date.parse(params[:user_birthday])
    @bday = Date.new(Date.today.year, @birthday.month, @birthday.day)
    @bday += 365.25 if Date.today >= @bday 
    "Your birthday is in #{(@bday - Date.today).to_i} days"
  end
end 
