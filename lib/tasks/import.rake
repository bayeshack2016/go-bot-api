require 'csv'

namespace :import do
  desc "Imports facilities from RIDB"
  task facilities: :environment do
    CSV.foreach('data/Facilities_API_v1.csv', :headers => true,:encoding => 'ISO-8859-1') do |row|
      puts Facility.create(ridb_id:row['FACILITYID'],legacy_id:row['LEGACYFACILITYID'])
    end
  end

  desc "Import RIDB transaction data"
  task transactions: :environment do
    CSV.foreach('data/transactions_2015.csv', :headers => true,:encoding => 'ISO-8859-1') do |row|
      puts Transaction.create(transaction_id:row['ID'],
                                        facility_id:row['FACILITY_ID'],
                                        facility_zip:row['FACILITY_ZIP'],
                                        park:row['PARK'],
                                        customer_zip:['Customer Zip Code'])
      puts Facility.create(ridb_id:row['FACILITYID'],legacy_id:row['LEGACYFACILITYID'])
    end
  end

end
