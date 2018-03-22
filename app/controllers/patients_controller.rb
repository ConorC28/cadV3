class PatientsController < ApplicationController
	def patientspage
		@title = 'Patients';
		@content = 'This service aims to unify the understanding doctors and hospitals have of their patients, creating
		a central of medical information';
		
		
		
	end
	
	
	
	def newpatient
	
	end
	
	def show
		@patient = Patient.find(params[:id])		
	end
	
	def create
		@patient = Patient.new(patient_params)
		@patient.save
		redirect_to @patient
	end
	
	private def patient_params
		params.require(:patient).permit(:firstname, :secondname, :dateofbirth, :address, :address, :phonenumber, :illness, :relevantmedicalinfo, :nextofkinfirstname, :nextofkinsecondname, :nextofkincontactnumber, :nextofkinaddress)
	
	end
	
end