class ComplaintsController < ApplicationController

 def index
 end
 
 def create
 	@complaint = Complaint.new(complaint_params)
 	if @complaint.save
 		#flash[:notice] = "Broken system has been reported.Progress on reported complaint will be communicated soon."
 		redirect_to @complaint

 	else
 	 # nothing yet 
 	end	
 end

 def new
 	@complaint = Complaint.new
 end 

 def show
 	@complaint = Complaint.find(params[:id])
 end

 def update
 end

 def destroy
 end

 def edit
 end

private

def complaint_params
   params.require(:complaint).permit(:description,:location,:picture) 
end   

end
