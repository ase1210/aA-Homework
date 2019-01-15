class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @p1 = name1
    @p2 = name2
    @cups = Array.new(14) {[]}
    @p1_cup_index = 6
    @p2_cup_index = 13
    fill_cups
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise ArgumentError.new("Invalid starting cup") unless ((0..5).to_a + (7..12).to_a).include?(start_pos)
    raise StandardError.new("Starting cup is empty") if @cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    count = cups[start_pos].length
    cups[start_pos] = []
    add_idx = 1
    while count > 0
      next_cup_idx = (start_pos + add_idx) % 14 
       
      if next_cup_idx == 6 && current_player_name != @p1
        add_idx += 1
      elsif next_cup_idx == 13 && current_player_name != @p2
        add_idx += 1
      else
        cups[next_cup_idx] << :stone 
        count -=1
        add_idx += 1 unless count == 0
      end
    end
    render
    ending_cup_idx = (start_pos + add_idx) % 14
    next_turn(ending_cup_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
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
