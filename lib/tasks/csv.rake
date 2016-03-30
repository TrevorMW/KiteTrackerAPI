require 'csv'

namespace :csv do
  desc "TODO"

  task import: :environment do 
    csv_text = File.read(ENV['path'])
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Api::V1::Sighting.create!(row.to_hash)
    end
  end

end
