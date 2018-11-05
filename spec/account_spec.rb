require "account"

describe Account do

  let(:account) { described_class.new }

  describe "#deposit" do
    it "confirms to the user that amount deposited had been added to the balance" do
      expect(account.deposit(400)).to output("Deposit of £400 successful, your new balance is £400")
    end
  end
end
