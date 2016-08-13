%w(sinatra haml mongo).each  { |g| require g}

enable :sessions
set :session_secret, 'super secret'
set :sessions, :expire_after => 2592000
set :session_store, Rack::Session::Pool

%w( ./lib/Connect ./lib/User ./app/routes ).each  { |l| require l}

Connect.new
