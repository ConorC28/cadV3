class PagesController < ApplicationController
	def about
		@title = 'About Us';
		@aboutcontent1 = 'The I.M.H. (Irish Medical Hub) is an organization made up of 330 individuals, 40 of these are professionals in their fields with
		a combined years of experience surpassing 800. The professions these people hold cover the entire range of medical interest be it mental health
		well-being or emergency medical training, every field is covered. This grouping is the head board of the I.M.H. and they consult with one another 
		regaurding any chenges or developments that should be applied to the medical sector, these are agreed upon, polished and then presented to the 
		Department of Health. Any propositions will have a marking of importance ranging from 1 - 10 and be accompanied by a "Expected result if not 
		followed" section detailing the I.M.H.s expectated consequence if the guidelines are not followed.';
		
		@aboutcontent2 = 'The remainder of the organisation is made up of small teams oriented towards a specific field, these are the professionals with
		their fingers on the pulse of healthcare industry, doctors, physicians, behavioural therapists, phamacists are but a few of the titles held by team
		members. These teams meet with the head board and discuss findings of medical interests, current standards upcoming events/conferences of interests,
		research and development, medical data etc. Through this process understandings and ideas are developed in order to create a feasible readplan for 
		the future of Irish medical and healthcare system.';
		
		
		
	end
	
	def imh
		@title = 'What is the I.M.H.';
		@content = 'The I.M.H. (Irish Medical Hub) was established as part of a new developmental strategy initiated by the H.S.E. (Health Service
		Executive) and the Irish government. This platform is the first step in the reshaping and redaploying of the Irish medical services, The 
		purpose of this softwares is to cantralise medical information on the countries population. only medical professionel have access to the 
		information';
	
	end
	
end
