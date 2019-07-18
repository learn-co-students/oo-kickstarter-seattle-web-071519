require_relative "./project.rb"
require 'pry'
class Backer
    attr_reader :backed_projects, :name

    def initialize(name)
        @name=name
        @backed_projects=[]
    end

    def back_project(project)
        self.backed_projects << project
        project.backers << self
        #binding.pry
    end
end



  # #when a backer backs a project, the name is added
        # #to the project's backer's list
        
        # #back_project takes in a project and adds it to the backed
        # #project list