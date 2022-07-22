# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Character do
  it 'exists and has attributes' do
    character_hash = {}

    character = Character.new(character_hash)

    expect(character.name).to eq('')
    expect(character.image_path).to eq('')
    expect(character.allies).to eq([])
    expect(character.enemies).to eq([])
    expect(character.affiliations).to eq('')
  end
end
