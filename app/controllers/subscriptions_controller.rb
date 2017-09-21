class SubscriptionsController < ApplicationController

  def new
    @user = User.find(session[:user_id])
    @project = Project.find(params[:project_id])

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
