class HomeController < ApplicationController
  def index
    render json: {response: "Just go to Muir Woods"}
  end
end
