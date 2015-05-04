class TasksController < ApplicationController
	def index
		@lecture = Lecture.find(params[:lecture_id])
		@tasks = @lecture.tasks
	end
	def show
		@task = Task.find(params[:id])
	end
	def new
		@lecture = Lecture.find(params[:lecture_id])
		@task = Task.new
	end
	def create
		@task = Task.new(post_params)

		if @task.save
			redirect_to lecture_tasks_path, :notice => "Task created"
		else 
			render "new"
		end
	end
	def edit
		@lecture = Lecture.find(params[:lecture_id])
		@task = Task.find(params[:id])
	end
	def update
		@task = Task.find(params[:id])

    if @task.update(post_params)
      redirect_to lecture_tasks_path, :notice=> "Record was edited"
    else
      render "edit"
    end
	end
	def destroy
		@task = Task.find(params[:id])
		if @task.destroy
			redirect_to lecture_tasks_path, :notice=> "Deleted"
		else
			render "index"
		end
	end

	private
		def post_params
			params.require(:task).permit(:name, :description, :lecture_id)
		end
end