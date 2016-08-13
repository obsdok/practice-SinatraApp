helpers do

    def user?
        Connect.new
        User.new Connect.user
        User.auth?
    end

    def authorisation?(params)
        Connect.new
        User.new Connect.user
        User.authorisation(params[:login], params[:password])
    end

    def registration?(params)
        Connect.new
        User.new Connect.user
        User.registration(params[:login], params[:email], params[:password])
    end

end
