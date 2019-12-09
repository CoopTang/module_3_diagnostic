class SearchController < ApplicationController

  def index
    @facade = PotterFacade.new(params[:house])
  end
end