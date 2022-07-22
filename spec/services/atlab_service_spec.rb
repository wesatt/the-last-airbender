# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AtlabService do
  describe 'AtlabService.conn' do
    it 'establishes a connection to the API' do
      connection = AtlabService.conn

      expect(connection).to be_a(Faraday::Connection)
    end
  end

  describe 'AtlabService.character_lookup_by_nation(nation)' do
    it 'returns a parsed json of all the characters associated with that nation' do
      json = AtlabService.character_lookup_by_nation('Fire Nation')

      expect(json).to be_a(Array)
      expect(json.first).to be_a(Hash)
      json.each do |hash|
        expect(hash.keys).to include(:_id, :allies, :enemies, :name, :affiliation)
      end
    end
  end
end
