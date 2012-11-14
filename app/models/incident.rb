class Incident < ActiveRecord::Base
  attr_accessible :address, :can_we_send_you_email, :date_of_incident, :description, :email, :latitude, :longitude, :name
  geocoded_by :address
  after_validation:geocode
end
