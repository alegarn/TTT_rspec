class Player
  @@count ||= 0

  attr_reader :name, :mark

  def initialize
    raise 'Seulement deux joueurs peuvent jouer en même temps !' if @@count >= 2

    puts ''
    puts "Donner le nom du joueur #{@@count + 1}"
    @name = $stdin.gets.chomp
    @@count += 1
    @mark = @@count == 1 ? 'X' : 'O'
    puts "Cool #{@name} ! Tu auras les #{@mark}"
    puts ''
  end
end
