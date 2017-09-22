class SubscriptionsController < ApplicationController

  def create
    @user = current_user
    @project = Project.find(params[:id])

    @subscription = Subscription.new(user: @user, project: @project)
    if @subscription.save
      redirect_to user_project ##project SHOW page
    else
      @project = Project.find(params[:project_id])
      redirect_to user_projects ##project INDEX page
    end
  end

  def delete
    subscription = Subscription.find(params[:id])
    if subscription[:user_id] == session[:user_id]
      subscription.destroy
      redirect_to user_project ##project SHOW page
    else
      redirect_to user_projects ##project INDEX page
    end
  end
end
