class ApiController < ApplicationController
    before_action :set_devRadarApi

    private
    def set_devRadarApi
        @devApi = DevRadar.new
    end
end
