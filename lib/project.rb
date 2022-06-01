class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        all_backers = ProjectBacker.all.select {|instance| instance.project == self}
        all_backers_array = all_backers.map {|backer_instance| backer_instance.backer}
        all_backers_array
    end

end