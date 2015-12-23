class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    @products= Product.all
  end

  def new
    @resume = Resume.new
       @products= Product.all
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
       
      redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
    else
      render "new"
    end
  end
 

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

private
  def resume_params
    params.require(:resume).permit(:name, :attachment, :email, :subject, :details)
  end
end
#redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded.
