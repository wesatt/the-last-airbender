class AtlabService
  def self.conn
    Faraday.new('https://last-airbender-api.herokuapp.com/')
  end

  def self.character_lookup_by_nation(nation)
    response = AtlabService.conn.get("/api/v1/characters?affiliation=#{nation}&perPage=all")
    JSON.parse(response.body, symbolize_names: true)
  end
end
