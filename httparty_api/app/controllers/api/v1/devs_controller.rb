class Api::V1::DevsController < ApiController
    
    def index
        listDevs = Dev.all
        #render json: Dev.all
        render json: listDevs, 
        include: [:localizacao => {:only => [:longitude,:latitude]}]
    end

    def create
        @new_dev = Dev.new(dev_params)

        # Carrega dados do github
        gitHub_data = @devApi.usuario(@new_dev.user_name)
        @new_dev.bio = gitHub_data['bio']
        @new_dev.avatar_url = gitHub_data['avatar_url']

        if @new_dev.save
            render json: @new_dev, status: :created
        else
            render json: @new_dev.errors, status: :unprocessable_entity
        end
    end

    private
    def dev_params
        params.require(:dev).permit(:nome, :user_name, :techs)
    end    
end