class RequestsController < ApplicationController
	def create
		@patient = Patient.find(params[:patient_id])
		@request = @patient.requests.create(request_params)
		redirect_to patient_path(@patient)
	
	end
	
	private def request_params 
		params.require(:request).permit(:notes, :request)
	end

end
