require 'net/http'
require 'uri'
require 'json'

class ActivitiesController < ApplicationController

  # Return list of activity names available
  def index
    uri = URI("https://ridb.recreation.gov/api/v1/activities.json?apikey=#{ENV['RIDB_API_KEY']}")
    res = Net::HTTP.get(uri)
    activity_names = []
    activities = JSON.parse(res)['RECDATA']
    activities.each do |activity|
      activity_names << {:activity_name => activity['ActivityName'].titleize}
    end

    render json: {activities: activity_names.to_json}
  end

end
