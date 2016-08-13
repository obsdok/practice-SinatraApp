helpers do

    def auth?
        @user = User.new( Connect.user )
    end

end

class User

    @connect = false

    attr_reader :login, :role

    def initialize(connect)
        @connect = connect
        @login = false
        @role = 'user'
        auth?
    end

    def auth?
        if ( checkSession == false ) || (checkCookie == false)
            return false
        end
        true
    end

    private

    def checkCookie

    end

    def checkSession

    end


end
