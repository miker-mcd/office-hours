class UpdatesController < ApplicationController
  def show
    @update = Update.find(params[:id])
    @project = Project.find(@update.project_id)
    # @update.user = User.find(params[:user_id])
    # @update.user = current_user

  end

  def index
    @project = Project.find(params[:project_id])
    @updates = Update.where(project: @project)
  end

  def new
    @project = Project.find(params[:project_id])
    @update = Update.new
  end

  def edit
    @update = Update.find(params[:id])
  end

  def create
    @update = Update.new(update_params)
    # @update.user_id = current_user.id
    @update.user_id = 3 #seed user
    @update.project_id = params[:project_id]
    if @update.save
      redirect_to action: "index"
    else
      status 422
      @errors = @update.errors.full_messages
      render :new
    end
  end

  def update
    @update = Update.find(params[:id])
    # if current_user.admin == true
      @update.approval = true
      if @update.save
        redirect_to @update
      end
    # else
      if @update.approval
        if @update.update(update_params)
          redirect_to @update
        else
          status 422
          @errors = @update.errors.full_messages
          render :edit
        end
    # redirect_to @update
      end
    # end
  end

  def destroy
    @update = Update.find(params[:id])
    @update.destroy

    redirect_to action: "index"
  end

private

  def update_params
    params.require(:update).permit(:title, :description)
  end

end
