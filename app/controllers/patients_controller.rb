class PatientsController < ApplicationController
	def patientspage
		@title = 'Patients';
		@content = 'This service aims to unify the understanding doctors and hospitals have of their patients, creating
		a central of medical information';
		
		
		
	end
	
	def newpatient
	
	end
	
	def create
		#render plain: params[:patient].inspect
	end
	
		
	
end
