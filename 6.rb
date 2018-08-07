module Test
  def result
    average = (score1 + score2) / 2.0
    puts average > 4 ? "Estudiante aprobado" : "Estudiante reprobado"
  end
end

module Attendance
  def student_quantity
    puts "Estudiantes creados: #{quantity}"
  end
end

class Student
  include Test
  extend Attendance

  attr_reader :score1, :score2
  @@quantity = 0
  def initialize(name, score1 = 4, score2 = 4)
    @name = name
    @score1 = score1
    @score2 = score2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end
end

students = []
students << ["Pipe", 6, 3]
students << ["Jorge", 5, 2]
students << ["Marcelo", 2, 7]
students << ["Damian", 4, 2]
students << ["Susana", 7, 7]
students << ["Leo", 4, 2]
students << ["Dani", 5, 6]
students << ["Gabriela", 5, 7]
students << ["Tomas", 4, 4]
students << ["Vladimir", 4, 4]


students.each { |s| Student.new(*s).result}
Student.student_quantity

