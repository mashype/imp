class TasksController < ApplicationController
	before_action :find_task, only: [:show, :edit, :update, :destroy]
  before_action :find_provider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!	  

  def index
    @tasks = Task.order ("due_date")
  end

  def show
  end

  def new
    @task = current_user.tasks.build
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    @task.provider_id = @provider.id

    respond_to do |format|
      if @task.save
        format.html { redirect_to @provider, notice: 'Provider was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @provider, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def find_task
      @task = Task.find(params[:id])
    end

    def find_provider
      @provider = Provider.find(params[:provider_id])
    end

    def task_params
      params.require(:task).permit(:title, :user_id, :_destroy, 
        notes_attributes: [:id, :content, :user_id, :provider_id, :_destroy])
    end
end
