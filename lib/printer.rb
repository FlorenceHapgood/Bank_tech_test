
class Printer

  def print_statement(history)
    puts 'date || credit || debit || balance'
    reverse(history)
    history.each { |hash|
    puts hash[:Date].to_s + ' || ' + hash[:Credit].to_s + ' || ' + hash[:Debit].to_s + ' || ' + hash[:Balance].to_s
    }
  end

 private

  def reverse(history)
    history.reverse!
  end

end
