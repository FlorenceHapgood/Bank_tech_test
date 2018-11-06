# frozen_string_literal: true

# MoneyOut class
class Money_Out
  attr_reader :record

  def initialize(amount, balance)
    @record = { Credit: '', Debit: amount, Date: Date.today.strftime('%v'),
                Balance: balance }
  end
end
