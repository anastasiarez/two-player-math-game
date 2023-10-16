class Game
  def initialize(player1, player2, total_questions = 5)
    @players = [player1, player2]
    @total_questions = total_questions
  end

  def start
    puts "Welcome to the Math Game!"
    current_player = 0

    while @total_questions > 0
      question = Question.new
      puts "#{players[current_player].name}, your question:"
      puts question.text
      print "> "
      response = gets.chomp

      if question.correct?(response)
        puts "Correct!"
      else
        puts "Incorrect. #{players[current_player].name} loses a life."
        players[current_player].reduce_life
      end

      if !players[current_player].alive?
        puts "#{players[current_player].name} is out of the game!"
      end

      current_player = 1 - current_player  # Switch players
      @total_questions -= 1
    end

    winner = players.find { |player| player.alive? }
    puts "Game over! The winner is #{winner.name}!" if winner
  end

  private

  attr_reader :players
end