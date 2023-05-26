require 'rails_helper'

RSpec.describe AvatarCharacter do
  before :each do
    @avchar = AvatarCharacter.new(name: "logan", photo_url: "1123", allies: ["jim", "carlos"], enemies: ["wayne", "jerome"], affiliation: "Canada", id: "120938mdfo")
  end

  it 'exists' do
    expect(@avchar).to be_an(AvatarCharacter)
  end
end