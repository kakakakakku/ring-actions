require 'sinatra'
require 'sinatra/namespace'

set :bind, '0.0.0.0'

namespace '/keynote' do
  get '/back' do
    system("osascript -e 'tell application \"Keynote\" to activate'")
    system("osascript -e 'tell application \"System Events\" to key code 123'")
  end
  get '/next' do
    system("osascript -e 'tell application \"Keynote\" to activate'")
    system("osascript -e 'tell application \"System Events\" to key code 124'")
  end
end
