class LecturesController < ApplicationController
	def index
		@lectures = Lecture.all
	end
	def show
		@lecture = Lecture.find(params[:id])
	end
	def new
		@lecture = Lecture.new
	end
	def create
			@lecture = Lecture.new(post_params)

		if @lecture.save
			redirect_to lectures_path, :notice => "Lecture created"
		else 
			render "new"
		end
	end
	def edit
		@lecture = Lecture.find(params[:id])
	end
	def update
		@lecture = Lecture.find(params[:id])

    if @lecture.update(post_params)
      redirect_to lectures_path, :notice=> "Record was edited"
    else
      render "edit"
    end
	end
	def destroy
		@lecture = Lecture.find(params[:id])
		if @lecture.destroy
			redirect_to lectures_path, :notice=> "Deleted"
		else
			render "index"
		end
	end
	private
		def post_params
			params.require(:lecture).permit(:name)
		end
end