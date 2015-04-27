class TasksController < ApplicationController
  def create
    @task = Task.create!(task_params)
    redirect_to @task.project
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(task_params)
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end
  private
  def task_params
    params.require(:task).permit(:name, :complete, :project_id)
  end
end
