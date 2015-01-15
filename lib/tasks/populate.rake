namespace :db do
  desc "Populates forms with faker"
  task populate: :environment do
    Rake::Task['db:reset'].invoke
    require 'populator'
    require 'faker'
    Organization.populate 10 do |org|
        org.organization_name   = Faker::Company.name
        org.address_line1   = Faker::Address.street_address
        org.address_line2   = Faker::Address.secondary_address
        org.city  = Faker::Address.city
        org.state   = Faker::Address.state
        org.zip   = Faker::Address.zip
    end
    puts "All done"
  end
end
