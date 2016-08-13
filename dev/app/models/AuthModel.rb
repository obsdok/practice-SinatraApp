class AuthModel

    def initialize(connect)
        @connect = connect
    end

    def registration(login, email, pass)
        user = @connect.insert_one({ login: login, email: email, pass: pass })
    end

    def authorisation(login, pass)
        user = @connect.find( { login: login } ).first
        if(user[:pass] == pass)
            return true
        end
    end

    def checkLogin

    end

    def checkEmail

    end

    private

    def authSessionUser

    end

    def authCookieUser

    end

end
