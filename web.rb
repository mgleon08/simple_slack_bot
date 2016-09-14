require 'sinatra/base'

module MainBot
  class Web < Sinatra::Base
    get '/' do
      'This is slack bot.'
    end
  end
end
