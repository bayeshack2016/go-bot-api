require 'csv'

namespace :import do
  desc "Imports facilities from RIDB"
  task facilities: :environment do
    CSV.foreach('data/Facilities_API_v1.csv', :headers => true,:encoding => 'ISO-8859-1') do |row|
      puts Facility.create(ridb_id:row['FACILITYID'],legacy_id:row['LEGACYFACILITYID'])
    end
  end

end
