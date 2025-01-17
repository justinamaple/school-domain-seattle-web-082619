class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] = [] if roster[grade] == nil
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each_pair { |grade, students| students.sort! }
    end
end