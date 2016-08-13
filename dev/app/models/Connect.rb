class Connect

    class << self

        def new
            unless @instance
                @connect = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'SimpleBlog')
            end
            @instance ||= self
        end

        def user
            @connect[:user]
        end

        def post
            @connect[:post]
        end

    end

end
