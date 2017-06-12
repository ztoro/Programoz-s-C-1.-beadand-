#!/usr/bin/ruby -w
# encoding: UTF-8

begin
  inFile = File.new(ARGV[0], "r")
rescue TypeError
  puts "Adj meg egy file-t!"
  exit
rescue Errno::ENOENT
  puts "Nincs ilyen file!"
  exit
end

outFile = open("eredmeny.txt", 'w')

  
=begin
inFile.each do |line|
  outFile.puts line
end
=end


inFile.each do |line|
  temp = line.split(",")
  f = temp[0]
  operator = temp[1].strip
  numbers = temp[2][10..-1]
  numberBox = numbers.split(" ").join.to_i
  if operator == "sum"
    sum = 0
    numberBox.each do |number|
      sum = sum + number
    end
    puts sum
  end
  if operator == "max"
    max = 0
    numberBox.each do |number|
      if number > max
        max = number
      end
    end
    puts max
  end
  if operator == "prod"
    prod = 1
    numberBox.each do |number|
      prod = prod * number
    end
    puts prod
  end
end
  
