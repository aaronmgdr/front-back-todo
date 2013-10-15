class TasksController < ApplicationController
  
  respond_to :json

  # def index 
  #   @tasks = Task.all
  #   respond_with(@tasks, :location => tasks_url)
  # end

  def create
    @task = Task.create(name: params[:name], complete: params[:complete])
    respond_with @task
  end

  # def toggle_status
  #   @task = Task.find_by_name("yes")
  #   @task.complete = (params[:complete])   

  #   respond_with @task
  # end
end
