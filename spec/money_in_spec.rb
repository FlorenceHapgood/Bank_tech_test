require "money_in"
require "date"

describe Money_In do

  describe "#record" do

    it "saves the amount deposited and the time in a hash" do
      money_in = Money_In.new(400, 4)
      expect(money_in.record).to eq({ Credit: 400, Debit: "", Date: Date.today.strftime("%v"), Balance: 4})
    end
  end
end
