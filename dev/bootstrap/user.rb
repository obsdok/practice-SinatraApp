helpers do

    def userAuth?
        User.new( Connect.user )

        ssn = false

        if ( session[:user_login] != nil ) && ( session[:user_role] != nil )
            User.login = session[:user_login]
            User.role = session[:user_role]
            ssn = true
        end

        if ( request.cookies['app_name'] != nil ) && ( request.cookies['app_time'] != nil )
            unless ssn
                return User.checkCookie( request.cookies[:app_name], request.cookies[:app_time] )
            end
        end

        if ssn
            return userSetCookie
        end

        return false
    end

    def userSetSession
        session[:user_login] = User.login
        session[:user_role] = User.role
        true
    end

    def userSetCookie
        response.set_cookie('app_name', :value => 'asd', :expires => Time.now + 8640)
        response.set_cookie('app_time', :value => Time.now, :expires => Time.now + 8640)
        true
    end

end

class User

    class << self

        @connect = false

        attr_accessor :login, :role

        def new( connect )
            @connect = connect
            @id = false
            @login = false
            @role = false
        end

        def checkCookie( app_name, app_time )
            # получить запись с app_name
            # сверить app_time
        end

        def setCookie( app_name, app_time )
            #добавить запись для текущего пользователя
        end

        def crypt

        end

    end

end
