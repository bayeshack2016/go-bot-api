class HomeController < ApplicationController
  def index
    return json: {response: "Just go to Muir Woods"}
  end
end
