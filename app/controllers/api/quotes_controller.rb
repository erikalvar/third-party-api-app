class Api::QuotesController < ApplicationController

  require 'http'

  def index
    @quotes = HTTP.headers({"Authorization" => "Bearer #{Rails.application.credentials.lotr_api[:api_key]}"})
    .get('https://the-one-api.herokuapp.com/v1/quote').parse
    render "index.json.jb"
  end


end
