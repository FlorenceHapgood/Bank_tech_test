class Money_Out

  attr_reader :record

  def initialize(amount, balance)
    @record = { Debit: amount, Date: Date.today.strftime("%v"), Balance: balance }
  end

end
