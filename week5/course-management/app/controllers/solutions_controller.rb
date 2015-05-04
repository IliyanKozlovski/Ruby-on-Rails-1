class SolutionsController < ApplicationController
		def index
		@lecture = Lecture.find(params[:lecture_id])
		@task = Task.find(params[:task_id])
		@solutions = Solution.all
	end
	def show
		@solution = Solution.find(params[:id])
	end
	def new
		@lecture = Lecture.find(params[:lecture_id])
		@task = Task.find(params[:task_id])
		@solution = Solution.new
	end
	def create
		@solution = Solution.new(post_params)

		if @solution.save
			redirect_to lecture_task_solutions_path, :notice => "Solution created"
		else 
			render "new"
		end
	end
	def edit
		@lecture = Lecture.find(params[:lecture_id])
		@task = Task.find(params[:task_id])
		@solution = Solution.find(params[:id])
	end
	def update
		@solution = Solution.find(params[:id])

    if @solution.update(post_params)
      redirect_to lecture_task_solutions_path, :notice=> "Record was edited"
    else
      render "edit"
    end
	end
	def destroy
		@solution = Solution.find(params[:id])
		if @solution.destroy
			redirect_to lecture_task_solutions_path, :notice=> "Deleted"
		else
			render "index"
		end
	end

	private
		def post_params
			params.require(:solution).permit(:name, :description, :lecture_id)
		end
end