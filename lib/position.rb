class Position
  def initialize(col = nil, row = nil)
    @col = col
    @row = row
  end

  def self.from_string(string)
    return unless string.match?(/[a|b|c][1-3]/)

    new(string[0].ord - 'a'.ord, string[1].to_i - 1)
  end

  def from_string(string)
    return unless string.match?(/[a|b|c][1-3]/)

    @row = string[0].ord - 'a'.ord
    @col = string[1].to_i - 1
  end

  def nil?
    col.nil? || row.nil?
  end

  def to_s
    [('a'.ord + col).chr, row + 1].join
  end

  def ==(other)
    col == other.col && row == other.row
  end

  attr_reader :col, :row
end
