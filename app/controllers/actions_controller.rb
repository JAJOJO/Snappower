class ActionsController < ApplicationController
  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new(complaint_params)
    if @complaint.save
      redirect_to '/dashboard'
    else
      render 'new'
    end
  end
  private
    def complaint_params
      params.require(:complaint).permit(:name)
    end



end
