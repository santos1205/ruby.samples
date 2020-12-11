class DevRadar 
    include HTTParty
    base_uri 'api.github.com/users'

    def initialize(github_username)
        @username = github_username
        #@options = {}
    end
    
    def usuario
        self.class.get("/#{@username}")
    end   

end