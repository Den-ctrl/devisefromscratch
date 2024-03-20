class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:public_uid])
  end

  def new
    @section = Section.new
  end
  

  def destroy
    @section = Section.find_puid(params[:id])
    @section.destroy

    redirect_to section_path, status: :see_other
  end

end
