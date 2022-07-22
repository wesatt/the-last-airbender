# frozen_string_literal: true

class AtlabFacade
  def self.character_lookup_by_nation(nation)
    parsed_json = AtlabService.character_lookup_by_nation(nation)
    parsed_json.map do |character|
      Character.new(character)
    end
  end
end
