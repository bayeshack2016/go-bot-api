require 'csv'
require 'open-uri'

namespace :import do
  desc "Imports facilities from RIDB"
  task facilities: :environment do
    text = open('https://raw.githubusercontent.com/bayeshack2016/go-bot-api/master/data/Facilities_API_v1.csv','rb').read
    CSV.new('https://raw.githubusercontent.com/bayeshack2016/go-bot-api/master/data/Facilities_API_v1.csv', :headers => true,:encoding => 'ISO-8859-1') do |row|
      puts Facility.create(ridb_id:row['FACILITYID'],legacy_id:row['LEGACYFACILITYID'])
    end
  end

end
