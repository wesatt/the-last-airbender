# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Character do
  it 'exists and has attributes' do
    character_hash = {
      _id: '5cf5679a915ecad153ab68fd',
      allies: ['Ozai'],
      enemies: ['Earth Kingdom'],
      name: 'Chan (Fire Nation admiral)',
      affiliation: 'Fire Nation Navy'
    }

    character = Character.new(character_hash)

    expect(character.name).to eq('Chan (Fire Nation admiral)')
    expect(character.image_path).to eq(nil)
    expect(character.allies).to eq(['Ozai'])
    expect(character.enemies).to eq(['Earth Kingdom'])
    expect(character.affiliation).to eq('Fire Nation Navy')
  end
end
