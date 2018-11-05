require "account"

describe Account do

  let(:fake_money_in) { double :money_in, :new => "something"}
  let(:fake_money_out) {double :money_out, :new => "something else"}
  let(:account) { described_class.new(fake_money_in, fake_money_out) }

  describe "#deposit" do
    it "confirms to the user that amount deposited had been added to the balance" do
      expect{ (account.deposit(400)) }.to output("Your deposit of £400 was successful.").to_stdout
    end

    it "creates a new instance of the deposit class and saves it to the history" do
      account.deposit(10)
      expect(account.history).to include(fake_money_in.new(5))
    end
  end

  describe "#withdraw" do
    it "creates a new instance of the deposite class and saves it to the history" do
      account.withdraw(20)
      expect(account.history).to include(fake_money_out.new(20))
    end
  end

end
