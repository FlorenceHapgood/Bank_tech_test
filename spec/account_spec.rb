require "account"

describe Account do

  let(:fake_money_in) { double :money_in }
  let(:account) { described_class.new(fake_money_in) }

  describe "#deposit" do
    it "confirms to the user that amount deposited had been added to the balance" do
      expect{ (account.deposit(400)) }.to output("Your deposit of £400 was successful.").to_stdout
    end

    it "creates a new instance of a Deposit class" do
      expect(account.deposit(400)).to equal(account.money_in(400))
    end
  end

end
