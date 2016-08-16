# require dependencies
%w( sinatra haml mongo).each  { |g| require g }

enable :sessions
set :session_secret, 'super secret'
set :sessions, :expire_after => 2592000
set :session_store, Rack::Session::Pool

#require core files
%w( ./bootstrap/connect ./bootstrap/user ./app/routes ).each  { |l| require l }

helpers do

    def bootstrap

        Connect.new
        @user = User.new( Connect.user )

    end

end
