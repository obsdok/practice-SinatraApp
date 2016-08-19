helpers do

    def show
        userAuth?
        haml :index
    end

end
