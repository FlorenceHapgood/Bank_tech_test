require "account"

describe Account do

  let(:account) { described_class.new }

  describe "#deposit" do
    it "confirms to the user that amount deposited had been added to the balance" do
      expect{ (account.deposit(400)) }.to output("Your deposit of £400 was successful.").to_stdout
    end
  end
end
