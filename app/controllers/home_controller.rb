class HomeController < ApplicationController
  def index
    render json: {status: "GO Bot API is Running"}
  end
end
