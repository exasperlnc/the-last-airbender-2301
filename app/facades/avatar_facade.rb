class AvatarFacade

  def fire_citizens
    results = service.get_fire_nation

    results.map do |result|
      AvatarCharacter.new(result)
    end
  end

  private

    def service
      @_service ||= AvatarService.new
    end
end