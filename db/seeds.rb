# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "csv"

CSV.foreach("/rails/db/seed.csv", headers: true) do |row|
  live = Live.find_or_create_by!(name: row['live_name'], date: row['live_date'])
  next if row['comedian_names'].blank?

  row['comedian_names'].split(',').each do |comedian_name|
    comedian = Comedian.find_or_create_by!(name: comedian_name)
    Performer.find_or_create_by!(live: live, comedian: comedian)
  end
end
