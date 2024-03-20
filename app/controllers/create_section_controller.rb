class CreateSectionController < ApplicationController
    def index
        @sections = Section.all
    end
    
    def show
        @section = Section.find(params[:public_uid])
    end

    def new
        @section = Section.new
    end

    def create
        @section = Section.new(section_params)

        if @section.save
            redirect_to sections_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def section_params
        params.permit(:name, :short_name)
    end
      
end
  