class MarketsController < ApplicationController
  def index
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
  
    end

    response = conn.get("/api/v0/markets")

    json = JSON.parse(response.body, symbolize_names: true)
    @markets = json[:data]
  end

  def show
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
  
    end

    response = conn.get("/api/v0/markets/#{params[:id]}")

    json = JSON.parse(response.body, symbolize_names: true)
    @market = json[:data]

    vendors_response = conn.get("/api/v0/markets/#{params[:id]}/vendors")

    vendors_json = JSON.parse(vendors_response.body, symbolize_names: true)
    @vendors = vendors_json[:data]
  end
end