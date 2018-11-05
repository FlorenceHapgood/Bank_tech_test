require "date"

class Money_In

  attr_reader :dep_record

  def initialize(amount)
    @dep_record = { Credit: amount, Date: Date.today }
  end

end
