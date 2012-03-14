Dir[Rails.root + "spec/factories/*.rb"].each do |file|
  include file
end
