class User

    class << self

        @connect = false

        attr_reader :login, :role

        def new(connect)
            unless @instance
                @connect = connect
            end
            @instance ||= self
        end

        def auth?
            p @connect
            return false unless checkSession || checkCookie
        end

        def registration(name, email, pass)
            
        end

        def authorisation

        end

        private

        def checkCookie

        end

        def checkSession

        end

    end

end
