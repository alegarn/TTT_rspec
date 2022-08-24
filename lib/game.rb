require_relative './board'
require_relative './player'
require_relative './position'

class Game
  def initialize(name)
    return unless name == 'tictac'

    system('clear')
    @board = Board.new
    @player1 = Player.new
    system('clear')
    @player2 = Player.new
    system('clear')
    @board.show
  end

  def self.tictactoe
    new('tictac').game_on
  end

  def game_on
    puts 'Lezzz go !'
    position = Position.new
    1.upto(@board.board.flatten.size) do |turn|
      ask(position, current_player(turn).name)
      play(position, current_player(turn).mark)
      if someone_winning?(@board.board)
        puts "#{current_player(turn).name} a gagné !!!!!!"
        break
      end
      show_board
    end
    print_endgame
  end

  def current_player(turn)
    turn.odd? ? @player1 : @player2
  end

  def ask(position, player_name)
    until @board.valid?(position)
      puts "#{player_name} : quelle case veux-tu cocher ?"
      position.from_string($stdin.gets.chomp.downcase)
    end
  end

  def play(position, player_mark)
    @board.set(player_mark, position)
  end

  def someone_winning?(board)
    answer = false
    answer ||= board.any? { |row| row.all? { |cell| cell == 'X' } || row.all? { |cell| cell == 'O' } }
    answer ||= board.transpose.any? { |row| row.all? { |cell| cell == 'X' } || row.all? { |cell| cell == 'O' } }
    diagonal1 = [board[0][0], board[1][1], board[2][2]]
    diagonal2 = [board[2][0], board[1][1], board[0][2]]
    answer ||= diagonal1.all? { |cell| cell == 'X' } || diagonal1.all? { |cell| cell == 'O' }
    answer ||= diagonal2.all? { |cell| cell == 'X' } || diagonal1.all? { |cell| cell == 'O' }
  end

  def show_board
    system('clear')
    puts 'voici la grille : '
    @board.show
  end

  def print_endgame
    puts 'Match nul ! Bye' unless someone_winning?(@board.board)
  end
end
