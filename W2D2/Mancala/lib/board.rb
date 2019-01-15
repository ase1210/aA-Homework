class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @p1 = name1
    @p2 = name2
    @cups = Array.new(14) {[]}
    fill_cups
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise ArgumentError.new("Invalid starting cup") unless (1..12).to_a.include?(start_pos)
    raise StandardError.new("Starting cup is empty") if @cups[]
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end

  private
  def fill_cups
    cups.each_with_index do |cup, idx|
      case idx
      when 6, 13
      else
        4.times { cups[idx] << :stone}
      end
    end
  end
  
end
