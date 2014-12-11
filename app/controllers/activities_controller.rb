class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  respond_to :html



  def index
    @activity = Activity.new
    @activities = Activity.all
    @users = User.all
    @attendee = Attendee.new
    @attendees = Attendee.all


    respond_with(@activities)
  end


  def edit
  end

  def create

    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id   #current_username is a DEVISE parameter
    @activity.save
    redirect_to activities_path
  end

  def update
    @activity.update(activity_params)
    redirect_to activities_path
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      params.require(:activity).permit(:description, :User_id)
    end
end
