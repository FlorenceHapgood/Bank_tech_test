
class Printer

attr_reader :history

  def initialize(history)
    @history = history
  end

  def print_statement
    puts "date || credit || debit || balance"
    @history.each { |hash|
    puts hash[:Date].to_s + " || " + hash[:Credit].to_s + " || " + hash[:Debit].to_s + " || " + hash[:Balance].to_s
    }
  end


end
