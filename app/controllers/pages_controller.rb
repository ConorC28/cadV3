class PagesController < ApplicationController
	def about
		@title = 'About Us';
		@content = 'This service aims to unify the understanding doctors and hospitals have of their patients, creating
		a central of medical information';
	end
	
end
