class TasksController < ApplicationController
    def create
        @category = Category.find(params[:category_id])
        @task = @category.tasks.create(task_params)
        redirect_to category_path(@category)
    end

    def delete
        @category = Category.find(params[:category_id])
        @task = @category.tasks.create(task_params)
        @task.delete
        redirect_to category_path(@category)
    end
    

    private

    def task_params
        params.require(:task).permit(:category_id, :name, :description, :date)
    end
    
end
