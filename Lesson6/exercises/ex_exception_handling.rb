# 1. Write a method which receives the name of a color as a string from the command line, and then displays it in
# a string as "You chose #{color}". If the user chooses the color red, though, raise an exception which stops the
# program and display a "No red, sorry" message. Write code to call your method, and test your result.


# 2. Modify your code in Task 1 to handle the exception and display only the error message.


# 3. In a separate lib folder, write a custom ColorChoiceException class, which include a default error message that
# can be overridden when the exception is raised. Modify your code in Task 2 to use, raise, and handle your custom
# exception. Test to ensure your exception works whether or not a custom error message is passed when it is raised.
# Don't forget to 'require' the custom class that you created in the lib folder.

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'lib/color_choice_exception'

def color_selector
  puts "Please enter a color?"
  color = gets.chomp
  if color == 'red'
    raise ColorChoiceException.new('Oh No! Not Red!!!')
  else
    puts "You choose #{color}"
  end
end

begin
  color_selector()
rescue ColorChoiceException => e
  puts "There was an error: #{e.message}"
end