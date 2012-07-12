class RegistrationLevel < ActiveRecord::Base
  validates :registrationDescription, :presence => true
end
