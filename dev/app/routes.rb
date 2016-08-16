get '/' do
    require './app/controllers/IndexController'
    p @user
    show
end

get '/auth/?' do
    require './app/controllers/AuthController'
    show
end

['/auth/registration/?', '/auth/authorisation/?'].each do |path|

    get path do
        redirect to('/auth')
    end

    post path do
        require './app/controllers/AuthController'

        case path
        when /authorisation/
            showAuthorisation
        when /registration/
            showRegistration
        end
    end

end

get '/profile' do

end
