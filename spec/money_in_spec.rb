require "money_in"
require "date"

describe Money_In do

  describe "#dep_record" do
    it "saves the amount deposited and the time in a hash" do
      money_in = Money_In.new(400)
      expect(money_in.dep_record).to eq({ Deposit_amount: 400, Date: Date.today})
    end
  end
end
