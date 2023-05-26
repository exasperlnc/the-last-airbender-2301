require 'rails_helper'

RSpec.describe AvatarService do
  context 'class methods' do
    it 'returns fire nation members' do
      avatar_service = AvatarService.new.get_fire_nation
      
      # character_data = avatar_service[:data]

      avatar_service[0..9].each do |character|
        
        expect(character).to have_key(:name)
        expect(character[:name]).to be_a(String)

        expect(character).to have_key(:allies)
        expect(character[:allies]).to be_an(Array)

        expect(character).to have_key(:affiliation)
        expect(character[:affiliation]).to be_a(String)

        expect(character).to have_key(:enemies)
        expect(character[:enemies]).to be_a(Array)
      end
    end
  end
end
