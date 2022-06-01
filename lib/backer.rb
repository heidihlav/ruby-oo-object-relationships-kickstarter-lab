require 'pry'
class Backer

    attr_reader :name

    def initialize(name)
        @name = name  
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        all_backers = ProjectBacker.all.select {|instance| instance.backer == self}
        all_backers_array = all_backers.map {|backer_instance| backer_instance.project}
        all_backers_array
    end

end


# binding.pry