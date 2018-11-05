class Money_Out

  describe "#with_record" do
    it "saves the amount withdrawn and the date in a hash" do
      money_out = Money_Out.new(50)
      expect(money_out.with_record).to eq({ Debit: 50, Date: Date.today })
    end
  end

end
