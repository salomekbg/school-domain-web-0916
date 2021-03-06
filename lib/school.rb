require 'pry'

class School
	attr_accessor :roster

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(student_name, grade)
		@roster[grade] ||= []
		@roster[grade] << student_name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each {|grade, student_array| student_array.sort!}
	end
end