require "balance"

describe Balance do

  let(:balance) { described_class.new }

  describe "#add" do
    it "returns the balance, agumented by the argument amount" do
      expect(balance.add(5)).to eq(5)
    end
  end

  describe "#subract" do
    it "returns the balance, decreased by the argument amount" do
      balance.add(10)
      expect(balance.subtract(5)).to eq(5)
    end
  end
end
