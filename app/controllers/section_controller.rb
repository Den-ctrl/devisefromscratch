class SectionController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:public_uid])
  end
end
