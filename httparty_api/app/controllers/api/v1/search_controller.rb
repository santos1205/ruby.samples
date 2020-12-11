class Api::V1::SearchController < ApplicationController
    def index
        longitude = params[:longitude]
        latitude = params[:latitude]
        techs = params[:techs]

        @devs_results = Dev                        
            .joins(:localizacao)
            .where('localizacao.longitude = ? and localizacao.latitude = ? and techs = ?', longitude, latitude, techs)

        render json: @devs_results
        #render json: { longitude: longitude }
    end    
end
