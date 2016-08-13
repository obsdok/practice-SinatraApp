helpers do

    def show
        auth?
        haml :index
    end

end
