quiz = []
File.readlines('quiz_source_text.txt').each do |line|
  quiz << line
end

topic = ''
questions = []
answers = []
solutions = []

quiz.each do |line|
  if /(Topic)/.match(line)
    topic = line
  end
  if /(^W.+$)/.match(line) 
    questions << line
  end
  if /(A\W.+$|B\W.+$|^C\W.+$)/.match(line)
    answers << line
  end
  if /(Correct:)/.match(line)
    solutions << /.(?<=Correct:\s.)/.match(line).to_s
  end
end

quiz_questions = Hash["questions", questions, "answers", answers, "solutions", solutions]

puts "Welcome to the Quiz"
puts "==================="
puts
puts topic
puts
counter = 0
number_of_questions = quiz_questions["questions"].length
quiz_questions["questions"].each_slice(number_of_questions) do |question|
  quiz_questions["answers"].each_slice(3) do |answer|
    puts question
    puts
    puts answer   
    puts
    user_answer = gets.chomp
    if quiz_questions["solutions"][counter] == user_answer.upcase
      puts "Correct!"
      puts
      counter += 1
    else
      puts "Incorrect,Sorry the answer was #{solutions[0]}."
      puts
      counter += 1
    end
  end
end