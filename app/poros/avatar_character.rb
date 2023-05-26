class AvatarCharacter
  attr_reader :name,
              :photo_url,
              :allies,
              :enemies,
              :affiliation,
              :id

  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @id = data[:id]
  end

  def get_enemies
    if enemies.empty?
      "none"
    else
      @enemies
    end
  end

  def get_allies
    if allies.empty?
      "none"
    else
      @allies
    end
  end
end