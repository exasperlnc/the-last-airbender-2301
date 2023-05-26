class SearchController < ApplicationController
  
  def index
    facade = AvatarFacade.new
    @characters = facade.fire_citizens
  end
end