require_relative "account"

class Printer

  def extract(history)
    history.map{ |history|
      history.record
     }
  end

end
