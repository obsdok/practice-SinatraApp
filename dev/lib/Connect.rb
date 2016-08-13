class Connect

    class << self

        def new
            unless @instance
                @connect = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'SimpleBlog')
            end
            @instance ||= self
        end

        def user
            self.new unless @connect
            @connect[:user]
        end

        def post
            self.new unless @connect
            @connect[:post]
        end

    end

end
