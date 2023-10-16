class Player
  attr_reader :name, :lives

  def initialize(name, total_lives = 3)
    @name = name
    @lives = total_lives
  end

  def reduce_life
    @lives -= 1
  end

  def alive?
    @lives > 0
  end
end
