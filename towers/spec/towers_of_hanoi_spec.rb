require 'rspec'
require 'towers_of_hanoi'

RSpec.describe Towers_Of_Hanoi do
  subject(:game) { Towers_Of_Hanoi.new }
  let(:stack) { [[3, 2, 1], [], [] ] }

  it "initializes a stack" do
    expect(game.stacks).to eq(stack)
  end

  it "expect the stakcs to be a nested array" do
    expect(game.stacks[0]).to be_a(Array)
  end

  it "it moves piece to the destination" do

    stack = [[3, 2], [1], []]
    expect(game.move).to receive(0,1).and_return(stack)

    expect do
      game.move(0,1)
    end
  end

  it "it calls get_input when the play method is run" do
    expect(game).to receive(:get_input)
    # expect(game.get_input('cat', 'dog')).to eq('invalid input')
    game.play
  end

  context "raises error" do
    it "raises an error if put in invalid input" do
      expect {game.move(0,'bob')}.to raise_error(ArgumentError)
    end
  end




end
