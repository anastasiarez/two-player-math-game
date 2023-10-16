# Player Class:

  Role: This class represents a player in the game. It encapsulates the player's state, such as name and remaining lives.
  Initialization: It will need the player's name to be initialized.

  Public Methods:
 * `reduce_life()`: Decreases the player's remaining lives.
 * `get_name()`: Returns the player's name.
 * `get_lives()`: Returns the player's remaining lives.
 * `is_alive()`: Checks if the player has remaining lives.

# Question Class:

  Role: This class represents a math question. It encapsulates the question's state, such as the two random numbers and the correct answer.
  Initialization: It will need the two random numbers to be initialized.

  Public Methods:
 * `generate_question()`: Generates a new math question with random numbers.
 * `check_answer(answer)`: Checks if the provided answer is correct.
 * `get_question()`: Returns the math question as a string.

# Game Class:

  Role: This class manages the game itself. It contains the game loop where players take turns to answer questions.
  Initialization: It will need to be initialized with two Player objects and a set number of total questions.

  Public Methods:
 * `start_game()`: Starts the game loop.
 * `end_game()`: Ends the game and declares the winner.
 * `current_player()`: Determines and returns the current player for the turn.
 * `get_winner()`: Determines and returns the winner of the game.
 * `game_over()`: Checks if the game is over based on the total questions or if a player runs out of lives.

# IOHandler Class (Optional):

  Role: This class manages user input and output. It handles displaying questions, receiving answers, and announcing game results.
  Initialization: No specific initialization is needed.

  Public Methods:
 * `display_question(question)`: Displays the math question.
 * `get_user_answer()`: Receives the user's answer.
 * `display_result(winner)`: Announces the game result with the winner's name.

# Role Assignment:

* The Game class contains the game loop where each instance of the loop represents the other player's turn.
* The Player class manages the state of each player and their remaining lives.
* The Question class manages the generation of math questions and checking answers.
* The IOHandler class is responsible for user input and output and may not have a class of its  own; its methods can be included within the Game class, for example.
  The game loop, player management, and user interaction are typically handled by the Game class, making it the central controller of the game. The Player class stores player-specific information, the Question class deals with generating questions, and the IOHandler handles user interactions.
