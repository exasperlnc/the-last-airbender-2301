class AvatarService

  def get_fire_nation
    get_url("/api/v1/characters?affiliation=fire+nation&perPage=1000")
  end


  private
  def conn
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") do |faraday|
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end