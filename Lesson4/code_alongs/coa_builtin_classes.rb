################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Built In Classes
#
################################################################################
#We are going to use the built in class 'File' to create a .txt file and add some text to it.

# 1. Ask the user for a file name. Open or create a file by that name,
# by adding file extension".txt" to the users input.
# Ask the user to write a sentence. Append that sentence to the file, preceded
# by the current date and time. Use newline character ("\n") as needed. Be sure to close the file.
# Check your work on the file system.

puts "What's the filename?"

filename = gets.chomp

f = File.new("#{filename}.txt", "a")

puts "Tell me something"

sentence = gets.chomp

f.write("#{Time.now} : #{sentence}\n")

f.close


# 2. Use the File class to open the file created above (using the same input from above), to read and
# display its contents to the terminal window. Read documentation on the .gets method, and write the
# necessary loop code.

f = File.new("hello.txt")

while sentence = f.gets
  puts sentence
end