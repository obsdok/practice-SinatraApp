helpers do

    def user?
        Connect.new
        User.new Connect.user
        User.auth?
    end

    def authorisation?(params)

    end

    def registration?(params)

    end

end
