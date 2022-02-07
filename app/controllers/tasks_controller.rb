class TasksController < ApplicationController
 skip_before_action :verify_authenticity_token
 protect_from_forgery #追記
 def index
    @tasks = Task.all
 end
 def create
     @task = Task.new(task_params)
     @task.user_id = params[:user_id]
     #debugger
    if @task.save
      redirect_to @task
    else
      render :new
    end
 end

 def new
    
 end
 def task_params
   params.require(:task).permit(:name, :description)
 end
 def task_params2
   params.permit( :user_id)
 end
end
 