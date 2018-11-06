require 'money_out'
# frozen_string_literal: true

describe Money_Out do
  describe '#record' do
    it 'saves the amount withdrawn and the date in a hash' do
      money_out = Money_Out.new(50, 4)
      expect(money_out.record).to eq(Credit: '',
                                     Debit: 50,
                                     Date: Date.today.strftime('%v'),
                                     Balance: 4)
    end
  end
end
