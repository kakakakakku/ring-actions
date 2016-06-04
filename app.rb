require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/reloader'
require 'blink1'

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

namespace '/blink1' do
  get '/red' do
    Blink1.open do |blink1|
     blink1.delay_millis = 2000
     blink1.blink(255, 0, 0, 1)
    end
  end

  get '/green' do
    Blink1.open do |blink1|
     blink1.delay_millis = 2000
     blink1.blink(0, 255, 0, 1)
    end
  end

  get '/blue' do
    Blink1.open do |blink1|
     blink1.delay_millis = 2000
     blink1.blink(0, 0, 255, 1)
    end
  end
end
