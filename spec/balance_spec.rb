require "balance"

describe Balance do

  let(:balance) { described_class.new }

  describe "#add" do
    it "returns the balance, agumented by the argument amount" do
      expect(balance.add(5)).to eq(5)
    end
  end
end
