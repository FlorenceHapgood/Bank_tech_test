class Money_Out

  attr_reader :with_record

  def initialize(amount)
    @with_record = { Debit: amount, Date: Date.today }
  end

end
