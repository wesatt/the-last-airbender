# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @characters = AtlabFacade.character_lookup_by_nation(params[:nation].humanize.titleize)
  end
end
