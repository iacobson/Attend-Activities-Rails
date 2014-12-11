class AttendeesController < ApplicationController
  before_action :set_attendee, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def create

    activity = Activity.find(params[:id])
    @attendee = activity.attendees.create user_id: current_user.id.to_i


    redirect_to activities_path
  end



  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy
    
    redirect_to activities_path
  end

  private
    def set_attendee
      @attendee = Attendee.find(params[:id])
    end

    def attendee_params
      params.require(:attendee).permit(:user_id)
    end
end
