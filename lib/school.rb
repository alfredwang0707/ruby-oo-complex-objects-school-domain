# code here!
require "pry"
class School
    attr_accessor :roster
    def initialize(roster)
    @roster = {}
    end

    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << name
        #binding.pry
        #In short, a||=b means: 
        #If a is undefined, nil or false, 
        #assign b to a. Otherwise, keep a intact.
    end

    def grade(grade)
        roster[grade]
    #binding.pry    
    end

    def sort 
        roster.each do |grade, name|
        #binding.pry     
        name.sort!
        end
        #sorted = change.sort # Ascending sort
        #sorted = change.sort { |a, b| a <=> b } # Same thing!
        
    end

end
