# code here!
class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name #instance variable
        @roster = {} #empty roster hash for start of school objects
    end

    def add_student(name, grade) #add_student method
        if @roster.has_key?(grade) #if there is a grade
            @roster[grade] << name #shovel in the name
        else
            @roster[grade] = [name] #else make grade
        end
    end

    def grade(grade)
        self.roster[grade] #not changing info, just presenting it
    end

    def sort()
        self.roster.each do |grade,students| #for each of the students use sort
            students.sort! 
    end
end
end