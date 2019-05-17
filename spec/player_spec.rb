require 'player'

describe Player do
    subject(:ollie) { described_class.new('Ollie') }
    subject(:cosmin) { Player.new("Cosmin") }

    describe "#name" do
      it "returns the name of the player" do
          expect(ollie.name).to eq('Ollie')
      end
    end

    describe "#hitpoints" do
      it "displays the player's hitpoints" do
        expect(ollie.hitpoints).to eq described_class::HITPOINTS
      end
    end
end
