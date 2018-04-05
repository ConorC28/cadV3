class WelcomeController < ApplicationController
  def index
	@title = 'Welcome to the I.M.H. Patient Management System';
	@welcomecontent1 = 'This is the Health Service Executives software for use by professionals in the medical health industry in
	the	Republic of Irelands. Please login to begin using the service, once logged in navigate the the patients section to access 
	the main features of the service. Basic information about this service are viewable
	on this site but any further functionality requires login credentials' 

	@welcomecontent2 = 'The functinality availabale to registered users includes - ' 	
	
	@welcomecontent3 ='Adding patients to the database'
	@welcomecontent4 ='editing a patients details or deleting a patient
						from the system altogether'
	@welcomecontent5 ='Submit requests regarding a patient'
	@welcomecontent6 ='Search the database of patients'
	
	end
end
