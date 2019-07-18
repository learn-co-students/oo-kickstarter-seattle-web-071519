require "pry"

class Project
    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def backers
        Backer.all.select do |backer|
            backer.backed_projects.include?(self)
            # binding.pry
        end

    end

    def to_s
        @title
    end

    def add_backer(backer)
        backers << backer
        backed_projects << self
        
    end

end





# project1 = Project.new("Awesome Project")
# project2 = Project.new("Radical Project")

# backer1 = Backer.new("Fred")
# backer1.back_project(project1)
# backer2 = Backer.new("George")
# backer2.back_project(project1)
# backer2.back_project(project2)


# puts project1.backers