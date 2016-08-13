helpers do

    def show
        haml :auth
    end

    def showRegistration
        haml :'auth/registration'
    end

    def showAuthorisation
        haml :'auth/authorisation'
    end

end
