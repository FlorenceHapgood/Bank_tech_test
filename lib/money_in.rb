require "date"

class Money_In

  attr_reader :record

  def initialize(amount)
    @record = { Credit: amount, Date: Date.today.strftime("%v") }
  end

end
