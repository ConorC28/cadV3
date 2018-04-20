class PatientsController < ApplicationController
	http_basic_authenticate_with name: "Conor", password: "Conlon", accept: [:about]
	

	def patientspage								# PatientPage view elements
		@title = 'Patients';
		@patientspagecontent1 = 'Patients and the execution of service are the number one focus of the I.M.H. With good service and high quality 
		data analysis we hope to create a healthier future for the people of Ireland. The patients section allows medical practitioners to update
		data about patients, create new ones, query the database to find information on a patient or remove corrupt data on a patient. You will 
		need to be signed in if you wish to use any of these features';		
			
	end
	
	def index
		@title = 'Search Results'
		@patients = Patient.search(params[:search])
	end
	
	
	def patientdb									# PatientDB view elements
		@title = 'Patients Database';
		@patientdbcontent1 = 'The patients database displays patient data and also allows for searching. It is intended for use by medical 
		professional only.';
		@patients = Patient.all						
	end
	
	def newpatient									# New view elements
		@title = 'Please add info about the new Patient';
	end
	
	def show										# Show view elements
		@title = 'Patient details';
		@patient = Patient.find(params[:id])		# send the user to a page displaying the new patient added		
	end
	
	def create										# Method to create patient
		@patient = Patient.new(patient_params)  	
		#@patient.save
		if(@patient.save)
			redirect_to @patient
		else
			render 'new'
		end
#render 'patientspage'
		#redirect_to @patients_path
		#return
	end
		
	
	def edit										# Edit view elements
		@title = 'Update Patient Data'
		@content = 'Welcome to the patients edit page, please ensure any changes made 
		to patients details before saving.'
		@patient = Patient.find(params[:id])
	end
	
	def update										#method to update patient
		@patient = Patient.find(params[:id])
		if(@patient.update(patient_params))
			
			redirect_to @patient
		else
			render 'updated'
		end
	end
													#method to destroy patient
	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy
		
		render 'patientspage'		
		
	end
													
	def updated
		@patient = Patient.find(params[:id])
		@title = 'Patient Data Updated'
	
	end
	
	
	private def patient_params						# Patient Params
		params.require(:patient).permit(:firstname, :secondname, :dateofbirth, :address, :phonenumber, :illness, :relevantmedicalinfo, :nextofkinfirstname, :nextofkinsecondname, :nextofkincontactnumber, :nextofkinaddress)
	
	end
	
end