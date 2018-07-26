require "open-uri"

class FlatsController < ApplicationController
  url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  FLATS = JSON.parse(open(url).read)

  before_action :set_flat, only: [:show, :update]

  def index
    @flats = FLATS
  end

  def show
  end

  def update
  end

  private

  def set_flat
    @flat = FLATS.find { |flat| flat["id"] == params["id"].to_i }
  end

end
