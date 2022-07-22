# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AtlabFacade do
  describe 'AtlabFacade.character_lookup_by_nation(nation)' do
    it 'returns Character POROs for that request' do
      characters = AtlabFacade.character_lookup_by_nation('Fire Nation')

      expect(characters).to be_a(Array)
      expect(characters.count).to eq(97)
      expect(characters).to be_all(Character)

      example = characters.first

      expect(example.name).to_not eq(nil)
    end
  end
end
