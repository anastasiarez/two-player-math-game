require_relative 'player'
require_relative 'question'
require_relative 'game'
require_relative 'gameIO'

player1 = Player.new('Alice')
player2 = Player.new('Bob')
question = Question.new

# Initialize and use GameIO
game_io = GameIO.new

# Perform I/O operations
game_io.display_message("Welcome to the game!")
user_input = game_io.get_user_input("Enter your choice: ")

