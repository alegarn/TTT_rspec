require 'simplecov'
SimpleCov.start

require_relative '../lib/game'


RSpec.describe Game, "in app.rb" do


  context "La.ch.ng the game" do

    it "Game.tictactoe" do
      expect(subject).to respond_to?(:tictactoe)
    end


  end

end
