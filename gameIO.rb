class GameIO
  def self.start_game
    puts "Enter Player 1's name:"
    player1_name = gets.chomp
    puts "Enter Player 2's name:"
    player2_name = gets.chomp

    player1 = Player.new(player1_name)
    player2 = Player.new(player2_name)

    game = Game.new(player1, player2)
    game.start
  end
end


GameIO.start_game