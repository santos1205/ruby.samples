class HomeController < ApplicationController
  before_action :set_devRadar_service

  def index
    @loadDev = @devRadarService.usuario
    render json: @loadDev
  end

  private
  def set_devRadar_service
    @devRadarService = DevRadar.new('santos1205')
  end

end
