class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play

  end

  def take_turn
    # until game_over
    #   show_sequence
    #   require_sequence
    #   round_success_message
    #   sequence_length += 1
    # end

  end

  def show_sequence
    add_random_color
  end

  def require_sequence

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Great job! Get ready for the next round..."
  end

  def game_over_message
    puts "Game Over!"
  end

  def reset_game
    game_over = false
    seq = []
    sequence_length = 1
  end
end
