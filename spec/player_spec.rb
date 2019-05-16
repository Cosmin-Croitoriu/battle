require 'player'

describe Player do
    subject(:cosmin) { described_class.new('Cosmin') }
    describe "#name" do
      it "returns the name of the player" do
          expect(cosmin.name).to eq('Cosmin')
      end
    end
end
