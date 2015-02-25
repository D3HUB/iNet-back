class ProjectController < ApplicationController

    def create
        parameters = params.require(:projectCreate).permit(:name,:describe)
        result = ProjectBLL.instance.create(parameters[:name],parameters[:description])

        unless result[:error].nil?
            render json: {message:'successful'}
        end
        render json: {message:result[:error]}
    end


end