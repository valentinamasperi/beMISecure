json.extract! station, :id, :position, :number_chains, :station_number, :free_chains, :station_name, :lockers, :security, :created_at, :updated_at
json.url station_url(station, format: :json)