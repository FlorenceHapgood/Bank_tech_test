class Money_Out

  attr_reader :record

  def initialize(amount)
    @record = { Debit: amount, Date: Date.today.strftime("%v") }
  end

end
