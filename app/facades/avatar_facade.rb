class AvatarFacade

  private

    def service
      @_service ||= MarketMoneyService.new
    end
end