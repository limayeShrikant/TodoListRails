class TasksController < ApplicationController

  def index
    @tasks = current_user.tasks.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
    @task = current_user.tasks.build(tasks_params)

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(tasks_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:todo, :description, :complete, :user_id)
  end
end
