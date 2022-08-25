require 'simplecov'
SimpleCov.start

require_relative '../lib/game'

RSpec.describe Game do

  context "La.ch.ng the game" do
    let (:game) do
      game = Game.new('tictac')
      allow(game).to receive(:new,'tictact')
    end
    it "Game.tictactoe" do
      expect(described_class).to eq(Game)
    end

    it "have a board" do
      expect(subject).to have_attributes(:board)
    end

    it "have f.rst pl.y.r" do
      expect(subject).to have_attributes(:player1)
    end

    it "have a s.cond pl.y.r" do
      expect(subject).to have_attributes(:player2)
    end
  end

end
