class FlatsController < ApplicationController
  def index
    require "open-uri"

    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    require "open-uri"
    id = params[:id].to_i

    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flat = JSON.parse(URI.open(url).read).find do |flat|
      flat["id"] == id
    end
  end
end
