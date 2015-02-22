class ProjectController < ApplicationController

    def create
        parameters = params.require(:projectCreate).permit(:name,:describe)
        result = ProjectBLL.instance.create(parameters[:name],parameters[:description])

        if result[:error].nil?
            render json: {message:'successful'}
        end
        render json: {message:result[:error]}
    end

    def get
        result = ProjectBLL.instance.retrieve(params[:id])
        if result[:error].nil?
            render 'project/description' , locals: {name:result[:value][:name]} and return
        end
        render json: {message:result[:error]}
    end
end