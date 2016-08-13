get '/' do
    haml :index
end

get '/auth/?' do
    if auth?
        redirect to('/')
    end
    haml :auth
end

['/auth/registration/?', '/auth/authorisation/?'].each do |path|
    get path do
        redirect to('/auth')
    end
end

post '/auth/registration/?' do
    if registration? params
        redirect to('/')
    end
    haml :'login/registration'
end

post '/auth/authorisation/?' do
    if authorisation? params
        redirect to('/')
    end
    haml :'login/authorisation'
end

get '/profile' do

end

get '/blog/:slug' do

end
