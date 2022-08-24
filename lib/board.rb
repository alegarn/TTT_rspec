class Board
  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
  end

  def set(mark, position)
    raise "mark has to be a 'X' or a 'O'" unless %w[X O].include?(mark)
    raise 'Position has already been played... sorry' unless @board[position.row][position.col] == ' '

    @board[position.row][position.col] = mark
  end

  def get(position)
    return false if position.nil?

    @board[position.row][position.col]
  end

  def win?
    true
  end

  def valid?(position = Position.new)
    get(position) == ' ' && position.row.between?(0, 2) && position.col.between?(0, 2)
  end

  def show
    puts '  | 1 | 2 | 3 |'
    puts '--|---|---|---|'
    puts "A | #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} |"
    puts '--|---|---|---|'
    puts "B | #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} |"
    puts '--|---|---|---|'
    puts "C | #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} |"
    puts '--|---|---|---|'
    puts ''
  end

  attr_reader :board
end
