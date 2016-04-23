json.array!(@facilities) do |facility|
  json.extract! facility, :id, :ridb_id, :legacy_id, :name
  json.url facility_url(facility, format: :json)
end
