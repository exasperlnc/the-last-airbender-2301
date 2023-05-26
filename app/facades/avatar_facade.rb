class AvatarFacade

  private

    def service
      @_service ||= AvatarService.new
    end
end