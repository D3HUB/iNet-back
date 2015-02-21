class ProjectBLL < Project
    include Singleton

    # @return {error:}
    def create(name, description)
        result = {error:nil}
        begin
            ProjectBLL.create!(name: name,description:description)
            result
        rescue
            result[:error] = 'Error: create project'
        end

    end
end