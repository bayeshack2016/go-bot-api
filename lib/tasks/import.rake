require 'csv'

namespace :import do
  desc "Imports facilities from RIDB"
  task facilities: :environment do
    CSV.foreach('https://raw.githubusercontent.com/bayeshack2016/go-bot-api/master/data/Facilities_API_v1.csv', :headers => true,:encoding => 'ISO-8859-1') do |row|
      puts Facility.find_or_create_by(ridb_id:row['FACILITYID'],legacy_id:row['LEGACYFACILITYID'])
    end
  end

end
