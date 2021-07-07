#paired with Nick
require_relative "project.rb"

class Backer

    attr_reader :backed_projects, :name
    attr_writer :backed_projects

    # attr_accessor :backed_projects, :name
    
    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        project.backers << self
    end

end

