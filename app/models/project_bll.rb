class ProjectBLL
    include Singleton

    # @return {error:}
    def create(name, description)
        result = {error:nil}
        begin
            Project.create!(name: name,description:description)
        rescue
            result[:error] = 'Error: create project'
        end
        result
    end

    # @return {error:,value:}
    def retrieve(id)
        result = {error:nil,value:''}
        begin
            result[:value] =  Project.find(id)
        rescue
            result[:error] = "Error: retrieving the project id: #{ id}"
        end
        result
    end
end