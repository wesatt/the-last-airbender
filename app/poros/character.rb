# frozen_string_literal: true

class Character
  attr_reader :name,
              :image_path,
              :allies,
              :enemies,
              :affiliation

  def initialize(hash)
    @name = hash[:name]
    @image_path = hash[:photoUrl]
    @allies = hash[:allies]
    @enemies = hash[:enemies]
    @affiliation = hash[:affiliation]
  end
end
