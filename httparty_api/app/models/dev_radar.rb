class DevRadar
    # include HTTParty
    # base_uri 'https://api.github.com/users/santos1205' 

    # def initialize
    #     @options = {}
    # end

    # def get_all
    #     self.class.get('/', @options)
    # end


    include HTTParty
    base_uri 'api.github.com/users'

    def initialize(github_username)
        @username = github_username
        @options = {}
    end
    
    def usuario
        self.class.get("/#{@username}", @options)
    end   

end