require 'date'
# frozen_string_literal: true

class Money_In

  attr_reader :record

  def initialize(amount, balance)
    @record = { Credit: amount, Debit: '', Date: Date.today.strftime('%v'), Balance: balance }
  end

end
