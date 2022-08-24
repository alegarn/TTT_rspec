#  Spec TicTacToe

## game.rb

## board.rb
### attr_reader :board
#### if TTT cl.ss.c
attr_reader

### Board.new initialize
#### New board test: @board: to sh.w inf.rm.t..ns
@board.class == Array
@board[0][0] == ' '
### Board.show
#### displ.y.d b..rd
@board[0][0] == ' ' || 'O' || 'X'



## position.rb
### Position.new initialize
#### P.s.t..n inst.nce is cr..t.d, c.l et r.w t.sts (its p.r.m.t.rs)
col = nil, row = nil


## player.rb
### Play.r.n.w initialize
#### Use case: initialize player's name
#### Test 1
@name == 'name'
#### Test 2
@@count <= 2
