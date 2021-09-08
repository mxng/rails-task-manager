class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    # if task is completed, return true (to mark the checkbox)
  end
end
