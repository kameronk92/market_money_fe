class VendorsController < ApplicationController
  def show
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
  
    end

    response = conn.get("/api/v0/vendors/#{params[:id]}")

    json = JSON.parse(response.body, symbolize_names: true)
    @vendor = json[:data]
  end
end