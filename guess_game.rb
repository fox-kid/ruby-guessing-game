#!/usr/bin/env ruby

print "What is your name? "
response = gets.chomp

puts "Hello, #{response}! The rules of the game are simple; I pick a random number between 1 and 100 and you guess what it is"

number = rand(100) + 1

print "Ok, I have my number. Guess 1: "

2.upto(4) do |i|
  guess = gets.chomp.to_i

  if guess == number
    puts "You guessed right! My number was #{number}"
    break
  elsif guess != number && i > 3
    puts "Sorry, that was your last guess. My number was #{number}"
  else
    print "Sorry, that's not it. Guess #{i}: "
  end
end
