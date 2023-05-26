require 'rails_helper'

RSpec.describe AvatarFacade do
  describe 'fire_citizens' do
    it 'gets fire citizens' do
      citizens = AvatarFacade.new.fire_citizens

      expect(citizens).to be_a(Array)
      
      citizens.each do |citizen|
        expect(citizen).to be_a(AvatarCharacter)
      end
    end
  end
end