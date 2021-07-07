require 'pry'

class Backer

    attr_reader :name, :backed_projects
    attr_accessor

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        project.add_backer(self)
       # backed_projects << project.title
        #binding.pry
    end

     






end