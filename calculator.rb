
# defs

def basic_calculator(number1, number2, operator)
 if operator == '+'
   puts "The result is #{number1 + number2}" 
 elsif operator == '-'
   puts "The result is #{number1 - number2}" 
 elsif operator == '*'
   puts "The result is #{number1 * number2}"
 else operator == '/'
   puts  "The result is #{number1 / number2}"
 end
end 
def advance_calculator(number1, number2, advance_operator)
 if advance_operator =="power of"
  puts "The result is #{number1 ** number2}"
 else advance_operator == "square root"
  puts "The result is #{Math.sqrt(number1)}"
 end  
end
def mortgage(principal, interest, months)
 puts "Your mortgage is #{principal[(interest(1+interest))**months]/[((1+interest)**months)-1]}"
end
def metric_calculator (weight_m, height_m)
 puts "Your BMI is #{weight_m/(height_m**2)}"
end
def imperial_calculator(weight_i, height_i)
 puts "Your BMI is #{(weight_i/(height_i**2))*703}"
end
# Initial question
puts "Which calculator would you like to use (a)Advance or (b)Basic or (m)Mortgage or (BMI)Bmi or (t)Trip"
answer = gets.chomp.downcase
case answer
 when "a" 
   puts "Would you like to square root or power to?"
   advance_operator = gets.chomp.to_s
  if advance_operator == 'square root'
   puts "What number do you want the square root of?"
   number1 = gets.to_i
  else advance_operator =='power to' 
   advance_operator = gets.chomp.to_s
   puts "What is your first number1?"
   number1 = gets.to_i
   puts "What is your second number?"
   number2 = gets.to_i
   advance_calculator(number1, number2, advance_operator)
 end
 when "b"
  puts "What is your first number?"
  number1 = gets.to_i
  puts "What is your second number?"
  number2 = gets.to_i
  puts "What is your operator?(+, -, * or /)"
  operator = gets.chomp
  basic_calculator(number1, number2, operator)
 end
# mortgage calculator
 when "m"
   puts "How much do you want to borrow?"
   principal = gets.to_i
   puts "How  much interest do you want to pay?"
   interest = gets.to_i
   puts "How many months do you want to pay your mortgage over?"
   months = gets.to_i
   mortgage(principal, interest, months)
 end
# bmi calculator
 when "bmi"
  puts "Find out your Bmi.(Metric or Imperial)"
  answer = gets.chomp.downcase
 if "metric"
  puts "Whats is your weight in kgs?"
  weight_m = gets.to_i
  puts "What is your height in metres?"
  height_m = gets.to_i
  metric_calculator(weight_m, height_m)
 else "imperial"
  puts " Whats is your weight in lbs?"
  weight_i = gets.to_i
  puts "What is your height in inches?"
  height_i = gets.to_i
  imperial_calculator(weight_i, height_i)
 end
 else
  puts "You need to pick a calculator"
 end 
end
# # trip calculator
# when "t"







