require "account"

describe Account do

  let(:account) { described_class.new }

  describe "#deposit" do
    it "adds the amount deposited to the balance" do
      account.deposit(400)
      expect(account.balance).to eq(400)
    end
  end
end
