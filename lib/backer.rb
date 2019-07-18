class Backer
    attr_accessor :backed_projects, :name

    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def Backer.all
        @@all
    end

    def to_s
        @name
    end

    def back_project(project)
        @backed_projects << project
    end

end