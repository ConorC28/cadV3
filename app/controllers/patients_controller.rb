class PatientsController < ApplicationController
	def patientspage
		@title = 'Patients';
		@patientspagecontent1 = 'Patients and the execution of service are the number one focus of the I.M.H. With good service and high quality 
		data analysis we hope to create a healthier future for the people of Ireland. The patients section allows medical practitioners to update
		data about patients, create new ones, query the database to find information on a patient or remove corrupt data on a patient. You will 
		need to be signed in if you wish to use any of these features';
		
		
		
	end
	
	def patientdb
		@title = 'Patients Database';
		@patientdbcontent1 = 'The patients database displays patient data and also allows for searching. It is intended for use by medical 
		professional only.';
		@patients = Patient.all
	end
	
	def newpatient
		@title = 'Please add info about the new Patient';
	end
	
	def show
		@title = 'New Patient Added';
		@patient = Patient.find(params[:id])		
	end
	
	def create
		@patient = Patient.new(patient_params)
		@patient.save
		redirect_to @patient
	end
	
	private def patient_params
		params.require(:patient).permit(:firstname, :secondname, :dateofbirth, :address, :phonenumber, :illness, :relevantmedicalinfo, :nextofkinfirstname, :nextofkinsecondname, :nextofkincontactnumber, :nextofkinaddress)
	
	end
	
end