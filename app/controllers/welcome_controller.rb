class WelcomeController < ApplicationController
  def index
	@title = 'Welcome to the I.M.H. Patient Management System';
	@welcomecontent1 = 'This is the Health Service Executives software for use by professionals in the medical health industry in
	the	Republic of Irelands. Please login to begin using the service, once logged in navigate the the patients section to access 
	the main features of the service.'  
	end
end
