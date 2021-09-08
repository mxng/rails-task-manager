class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    # if task is completed, return true (to mark the checkbox)
    # redirect_to task_path(@task)
  end

  def new
    @task = Task.new
  end

  def create
    # extract the data from params
    # create new instance of task
    # save it
    # redirected to another route
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task) if @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
