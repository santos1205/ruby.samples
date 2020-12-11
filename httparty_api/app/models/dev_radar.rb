class DevRadar
    include HTTParty
    base_uri 'api.github.com/users'
    
    def usuario(username)
        self.class.get("/#{username}")
    end       

end